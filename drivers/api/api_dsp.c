/************************************************************************************
**                                                                                 **
**                             mcHF Pro QRP Transceiver                            **
**                         Krassi Atanassov - M0NKA 2012-2019                      **
**                            mail: djchrismarc@gmail.com                          **
**                                 twitter: @M0NKA_                                **
**---------------------------------------------------------------------------------**
**                                                                                 **
**  File name:                                                                     **
**  Description:                                                                   **
**  Last Modified:                                                                 **
**  Licence:                                                                       **
**          The mcHF project is released for radio amateurs experimentation,       **
**          non-commercial use only. All source files under GPL-3.0, unless        **
**          third party drivers specifies otherwise. Thank you!                    **
************************************************************************************/

// Common
#include "mchf_board.h"

#include <stdio.h>

#ifdef DSP_MODE

#include "audio_driver.h"
#include "ui_rotary.h"
#include "api_dsp.h"

// Transceiver state public structure
extern __IO TransceiverState 		ts;

// ------------------------------------------------
// Spectrum display
extern __IO	SpectrumDisplay			sd;

// ------------------------------------------------
// Frequency public
extern __IO DialFrequency 			df;

extern __IO	AudioDriverState		ads;

// ------------------------------------------------
extern ulong tune_steps[];

// ------------------------------------------------
//#define STATE_IDLE					0
//#define STATE_COMMAND_PROC			1
//#define STATE_BROADCAST				2

typedef struct API_STATE
{
	// Transfer buffers
	uchar ou_buffer[300];
	uchar in_buffer[16];

	// Current driver mode
	//uchar mode;

	//
} API_STATE;

// As public
API_STATE as;

//uchar api_drv_dissabled = 0;

// Do not broadcast until allowed by UI
// because the CS pin could be used to enter
// bootloader mode by the UI CPU
uchar api_broadcast_on = 1;

uchar pub_v = 0;
uchar led_s = 0;
ulong pro_s = 0;

//*----------------------------------------------------------------------------
//* Function Name       : UiLcdHy28_SpiInit
//* Object              :
//* Input Parameters    :
//* Output Parameters   :
//* Functions called    :
//*----------------------------------------------------------------------------
static void api_dsp_spi_init()
{
	GPIO_InitTypeDef GPIO_InitStructure;
	SPI_InitTypeDef  SPI_InitStructure;

	// Enable the SPI periph
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI2, ENABLE);

	// Common SPI settings
	GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;

	// SPI SCK pin configuration
	GPIO_InitStructure.GPIO_Pin = LCD_SCK;
	GPIO_Init(LCD_SCK_PIO, &GPIO_InitStructure);

	// SPI  MOSI pins configuration
	GPIO_InitStructure.GPIO_Pin =  LCD_MOSI;
	GPIO_Init(LCD_MOSI_PIO, &GPIO_InitStructure);

	// SPI  MISO pins configuration
	GPIO_InitStructure.GPIO_Pin =  LCD_MISO;
	GPIO_Init(LCD_MISO_PIO, &GPIO_InitStructure);

	// Set as alternative
	GPIO_PinAFConfig(LCD_SCK_PIO,  LCD_SCK_SOURCE,  GPIO_AF_SPI2);
	GPIO_PinAFConfig(LCD_MISO_PIO, LCD_MISO_SOURCE, GPIO_AF_SPI2);
	GPIO_PinAFConfig(LCD_MOSI_PIO, LCD_MOSI_SOURCE, GPIO_AF_SPI2);

	// SPI configuration
	SPI_I2S_DeInit(SPI2);
	SPI_InitStructure.SPI_Direction 		= SPI_Direction_2Lines_FullDuplex;
	SPI_InitStructure.SPI_DataSize 			= SPI_DataSize_8b;
	SPI_InitStructure.SPI_CPOL 				= SPI_CPOL_High;
	SPI_InitStructure.SPI_CPHA 				= SPI_CPHA_2Edge;
	SPI_InitStructure.SPI_NSS 				= SPI_NSS_Soft;
	SPI_InitStructure.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_32;
	SPI_InitStructure.SPI_FirstBit 			= SPI_FirstBit_MSB;
	SPI_InitStructure.SPI_Mode 				= SPI_Mode_Master;
	SPI_Init(SPI2, &SPI_InitStructure);

	// Enable SPI2
	SPI_Cmd(SPI2, ENABLE);

	// Common misc pins settings
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;

	// Configure GPIO PIN for Chip select
	//GPIO_InitStructure.GPIO_Pin = LCD_CS;
	//GPIO_Init(LCD_CS_PIO, &GPIO_InitStructure);

	// PA9 as chip select
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

	// Configure GPIO PIN for Reset
	//GPIO_InitStructure.GPIO_Pin = LCD_RESET;
	//GPIO_Init(LCD_RESET_PIO, &GPIO_InitStructure);

	// Deselect : Chip Select high
	//GPIO_SetBits(LCD_CS_PIO, LCD_CS);
	GPIO_SetBits(GPIOA, GPIO_Pin_9);
}

// PA4 (usually DAC) is used for IRQ from UI CPU
static void api_dsp_irq_init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	EXTI_InitTypeDef EXTI_InitStructure;
	NVIC_InitTypeDef NVIC_InitStructure;

	// Configure PADDLE_DASH pin as input
	GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_IN;
	GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_UP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;

	GPIO_InitStructure.GPIO_Pin   = GPIO_Pin_4;

	// --------------------------------------------------------------
	// rev 0.7 Logic
	if(get_pcb_rev() != 0x08)
	{
		GPIO_Init(GPIOA, &GPIO_InitStructure);
		// Connect Button EXTI Line to GPIO
		SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOA,EXTI_PinSource4);
	}
	else				// rev 0.8 Logic
	{
		GPIO_Init(GPIOB, &GPIO_InitStructure);
		SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOB,EXTI_PinSource4);
	}
	// --------------------------------------------------------------

	// Configure EXTI line
	EXTI_InitStructure.EXTI_Line    = EXTI_Line4;
	EXTI_InitStructure.EXTI_Mode    = EXTI_Mode_Interrupt;
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
	EXTI_Init(&EXTI_InitStructure);

	// Enable and set EXTI Interrupt to the lowest priority
	NVIC_InitStructure.NVIC_IRQChannel = EXTI4_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x0F;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x0F;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);
}

static uchar api_dsp_SendByteSpiA(uint8_t byte)
{
	while (SPI_I2S_GetFlagStatus(SPI2, SPI_I2S_FLAG_TXE)  == RESET);
	SPI_I2S_SendData(SPI2, byte);

	while (SPI_I2S_GetFlagStatus(SPI2, SPI_I2S_FLAG_RXNE) == RESET);
	return (uchar)SPI_I2S_ReceiveData(SPI2);
}

//*----------------------------------------------------------------------------
//* Function Name       : api_dsp_to_cpu_msg
//* Object              : broadcast current status
//* Notes    			:
//* Notes   			:
//* Notes    			:
//* Context    			: CONTEXT_UI_DRIVER
//*----------------------------------------------------------------------------
static void api_dsp_to_cpu_msg(void)
{
	ulong i;

	// CS Low - generate IRQ in the UI CPU
	GPIO_ResetBits(GPIOA, GPIO_Pin_9);

	// Leading delay to allow for the task switching context
	// in the UI CPU to catch up
	for(i = 0; i < 20000; i++)
		__asm(".hword 0x46C0");

	// Send buffer - ideally via DMA
	for(i = 0; i < 300; i++)
		api_dsp_SendByteSpiA(as.ou_buffer[i]);

	// CS high - restore bus state
	__asm(".word 0x46C046C0");
	GPIO_SetBits(GPIOA, GPIO_Pin_9);
}

//*----------------------------------------------------------------------------
//* Function Name       : api_dsp_to_cpu_msg
//* Object              : broadcast current status
//* Notes    			:
//* Notes   			: Only flag updates here !!!
//* Notes    			:
//* Context    			: CONTEXT_GPIO_IRQ
//*----------------------------------------------------------------------------
static void api_dsp_execute_command(void)
{
	ushort cmd;
	//ulong  i;

	// Two bytes
	cmd = (as.in_buffer[0] << 8) | (as.in_buffer[1]);

	// Process
	switch(cmd)
	{
		// Update freq
		case API_UPD_FREQ:
		{
			df.tune_req  = as.in_buffer[0x02] << 24;
			df.tune_req |= as.in_buffer[0x03] << 16;
			df.tune_req |= as.in_buffer[0x04] <<  8;
			df.tune_req |= as.in_buffer[0x05] <<  0;
			df.tune_upd = 1;
			break;
		}

		// Make it change band
		case API_UPD_BAND:
		{
			if((as.in_buffer[2] != ts.band) && (as.in_buffer[2] <= MAX_BANDS))
				ts.api_band = as.in_buffer[2];

			break;
		}

		// Make it change volume
		case API_UPD_VOL:
		{
			// This is IRQ code, ideally do not print from here!!!
			//printf("API_UPD_VOL\n\r");

			if((as.in_buffer[2] < MAX_AUDIO_GAIN) && (ts.audio_gain != as.in_buffer[2]))
				ts.audio_gain = as.in_buffer[2];

			break;
		}

		// Set demodulator mode
		case API_UPD_DEMOD:
		{
			if(as.in_buffer[2] <= DEMOD_MAX_MODE)
				ts.dmod_mode = as.in_buffer[2];

			break;
		}

		// Make it change filter, update done by ui_driver, as request
		case API_UPD_FILT:
		{
			if((as.in_buffer[2] != ts.filter_id) && (as.in_buffer[2] <= AUDIO_WIDE))
				ts.api_filter_id = as.in_buffer[2];

			break;
		}

		// Update tuning step
		case API_UPD_STEP:
		{
			df.selected_idx = as.in_buffer[0x02];
			df.tuning_step	= tune_steps[df.selected_idx];
			break;
		}

		// Pass NCO freq
		case API_UPD_NCO:
		{
			df.nco_freq  = as.in_buffer[0x02] <<  8;
			df.nco_freq |= as.in_buffer[0x03] <<  0;
			break;
		}

		// CW TX
		case API_CW_TX:
		{
			if(as.in_buffer[0x02])
			{
				ts.api_iamb_type 	= as.in_buffer[0x03];	// keyer type
				ts.txrx_mode 		= TRX_MODE_TX;			// tx mode on
			}
			else
				ts.api_iamb_type 	= 0;					// keyer type

			break;
		}

		// Enable broadcast
		case API_ENABLE_POST:
		{
			api_broadcast_on = 1;
			break;
		}

		// Write directly to public state structure
		case API_WRITE_EEP:
		{
			uchar *eep = (uchar *)&ts;	// get ptr
			ushort offset = 0,size = 0;

			// Get offset
			offset  = as.in_buffer[0x02] <<  8;
			offset |= as.in_buffer[0x03] <<  0;
			if(offset > sizeof(TransceiverState))
				break;

			// Get size
			size = as.in_buffer[0x04];
			if(size > 4)
				break;

			// Write directly
			switch(size)
			{
				// uchar
				case 1:
					*(eep + offset + 0) = as.in_buffer[0x08];
					break;
				// ushort
				case 2:
					*(eep + offset + 0) = as.in_buffer[0x08];
					*(eep + offset + 1) = as.in_buffer[0x07];
					break;
				// ulong
				case 4:
					*(eep + offset + 0) = as.in_buffer[0x08];
					*(eep + offset + 1) = as.in_buffer[0x07];
					*(eep + offset + 2) = as.in_buffer[0x06];
					*(eep + offset + 3) = as.in_buffer[0x05];
					break;
				default:
					break;
			}

			break;
		}

		// Nothing
		default:
			df.tune_upd = 0;	// No freq update
			break;
	}
}

//*----------------------------------------------------------------------------
//* Function Name       : api_dsp_init
//* Object              :
//* Notes    			:
//* Notes   			:
//* Notes    			:
//* Context    			: CONTEXT_RESET_VECTOR
//*----------------------------------------------------------------------------
void api_dsp_init(void)
{
	// Init values
	ts.api_band 		= 0;
	df.tune_upd 		= 0;
	ts.api_iamb_type 	= 0;	// nothing

	// HW init
	api_dsp_spi_init();
	api_dsp_irq_init();
}

//*----------------------------------------------------------------------------
//* Function Name       : api_dsp_thread
//* Object              :
//* Notes    			:
//* Notes   			:
//* Notes    			:
//* Context    			: CONTEXT_RESET_VECTOR
//*----------------------------------------------------------------------------
void api_dsp_thread(void)
{
	ushort i;

	if(pro_s < 5000)
	{
		pro_s++;
		return;
	}
	pro_s = 0;

	led_s = !led_s;
}

//*----------------------------------------------------------------------------
//* Function Name       : api_dsp_irq
//* Object              : Change state to command processing
//* Notes    			:
//* Notes   			:
//* Notes    			:
//* Context    			: CONTEXT_RESET_VECTOR
//*----------------------------------------------------------------------------
void api_dsp_irq(void)
{
	uchar i;

	for(i = 0; i < 16; i++)
		as.in_buffer[i] = api_dsp_SendByteSpiA(0);

	// Process request
	api_dsp_execute_command();
}

//*----------------------------------------------------------------------------
//* Function Name       : api_dsp_post
//* Object              : send and receive
//* Notes    			:
//* Notes   			:
//* Notes    			:
//* Context    			: CONTEXT_UI_DRIVER
//*----------------------------------------------------------------------------
void api_dsp_post(q15_t *fft)
{
	ulong k;
	ulong tune_loc;

	// Broadcast enabled ?
	if(!api_broadcast_on)
		return;

	//tune_loc = df.tune_new;
	tune_loc = ts.tune_freq;

	// Clear buffer
	for(k = 0; k < 300;k++)
		as.ou_buffer[k] = 0;

	// ----------------------
	// Header
	as.ou_buffer[0x00] = 0x12; 						// signature
	as.ou_buffer[0x01] = 0x34;						// signature
	as.ou_buffer[0x02] = led_s;						// blinker
	as.ou_buffer[0x03] = pub_v;						// seq cnt

	// DSP Version
	as.ou_buffer[0x04] = TRX4M_VER_MAJOR;
	as.ou_buffer[0x05] = TRX4M_VER_MINOR;
	as.ou_buffer[0x06] = TRX4M_VER_RELEASE;
	as.ou_buffer[0x07] = TRX4M_VER_BUILD;

	// Frequency
	as.ou_buffer[0x08] = tune_loc >> 24;
	as.ou_buffer[0x09] = tune_loc >> 16;
	as.ou_buffer[0x0A] = tune_loc >>  8;
	as.ou_buffer[0x0B] = tune_loc >>  0;

	as.ou_buffer[0x0C] = ts.dmod_mode;
	as.ou_buffer[0x0D] = ts.band;
	as.ou_buffer[0x0E] = ts.audio_gain;
	as.ou_buffer[0x0F] = ts.filter_id;

	// Tuning step
	as.ou_buffer[0x10] = df.selected_idx;

	// Local NCO freq
	as.ou_buffer[0x11] = df.nco_freq >>  8;
	as.ou_buffer[0x12] = df.nco_freq >>  0;

	// Insert FFT
	if(fft != NULL)
	{
		// Left part of screen
		for(k = 0; k < 128;k++)
			as.ou_buffer[k + 0x28] = (uchar)*(fft + k + 128);

		// Right part of screen
		for(k = 0; k < 128;k++)
			as.ou_buffer[k + 128 + 0x28] = (uchar)*(fft + k + 0);
	}

	// Footer
	as.ou_buffer[298] = 0x55;
	as.ou_buffer[299] = 0xAA;

	// Broadcast current state
	api_dsp_to_cpu_msg();

	pub_v++;
}

#endif
