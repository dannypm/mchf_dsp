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

#ifndef __API_DSP_H
#define __API_DSP_H

#ifdef DSP_MODE

// Command interface
#define API_UPD_FREQ					0x0001
#define API_UPD_BAND					0x0002
#define API_UPD_VOL						0x0003
#define API_UPD_DEMOD					0x0004
#define API_UPD_FILT					0x0005
#define API_UPD_STEP					0x0006
#define API_UPD_NCO						0x0007
#define API_CW_TX						0x0008

#define API_ENABLE_POST					0x0009

// Exports
void api_dsp_init(void);
void api_dsp_thread(void);
void api_dsp_irq(void);

void api_dsp_post(q15_t *fft);

#endif

#endif
