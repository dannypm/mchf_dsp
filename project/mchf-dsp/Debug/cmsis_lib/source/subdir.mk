################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/misc.c \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_adc.c \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_dac.c \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_dma.c \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_exti.c \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_flash.c \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_fsmc.c \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_gpio.c \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_i2c.c \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_pwr.c \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_rcc.c \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_rtc.c \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_spi.c \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_syscfg.c \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_tim.c \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_usart.c \
C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_wwdg.c 

OBJS += \
./cmsis_lib/source/misc.o \
./cmsis_lib/source/stm32f4xx_adc.o \
./cmsis_lib/source/stm32f4xx_dac.o \
./cmsis_lib/source/stm32f4xx_dma.o \
./cmsis_lib/source/stm32f4xx_exti.o \
./cmsis_lib/source/stm32f4xx_flash.o \
./cmsis_lib/source/stm32f4xx_fsmc.o \
./cmsis_lib/source/stm32f4xx_gpio.o \
./cmsis_lib/source/stm32f4xx_i2c.o \
./cmsis_lib/source/stm32f4xx_pwr.o \
./cmsis_lib/source/stm32f4xx_rcc.o \
./cmsis_lib/source/stm32f4xx_rtc.o \
./cmsis_lib/source/stm32f4xx_spi.o \
./cmsis_lib/source/stm32f4xx_syscfg.o \
./cmsis_lib/source/stm32f4xx_tim.o \
./cmsis_lib/source/stm32f4xx_usart.o \
./cmsis_lib/source/stm32f4xx_wwdg.o 

C_DEPS += \
./cmsis_lib/source/misc.d \
./cmsis_lib/source/stm32f4xx_adc.d \
./cmsis_lib/source/stm32f4xx_dac.d \
./cmsis_lib/source/stm32f4xx_dma.d \
./cmsis_lib/source/stm32f4xx_exti.d \
./cmsis_lib/source/stm32f4xx_flash.d \
./cmsis_lib/source/stm32f4xx_fsmc.d \
./cmsis_lib/source/stm32f4xx_gpio.d \
./cmsis_lib/source/stm32f4xx_i2c.d \
./cmsis_lib/source/stm32f4xx_pwr.d \
./cmsis_lib/source/stm32f4xx_rcc.d \
./cmsis_lib/source/stm32f4xx_rtc.d \
./cmsis_lib/source/stm32f4xx_spi.d \
./cmsis_lib/source/stm32f4xx_syscfg.d \
./cmsis_lib/source/stm32f4xx_tim.d \
./cmsis_lib/source/stm32f4xx_usart.d \
./cmsis_lib/source/stm32f4xx_wwdg.d 


# Each subdirectory must supply rules for building sources it contributes
cmsis_lib/source/misc.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/misc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis_lib/source/stm32f4xx_adc.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_adc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis_lib/source/stm32f4xx_dac.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_dac.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis_lib/source/stm32f4xx_dma.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_dma.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis_lib/source/stm32f4xx_exti.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_exti.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis_lib/source/stm32f4xx_flash.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis_lib/source/stm32f4xx_fsmc.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_fsmc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis_lib/source/stm32f4xx_gpio.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis_lib/source/stm32f4xx_i2c.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis_lib/source/stm32f4xx_pwr.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_pwr.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis_lib/source/stm32f4xx_rcc.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_rcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis_lib/source/stm32f4xx_rtc.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_rtc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis_lib/source/stm32f4xx_spi.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis_lib/source/stm32f4xx_syscfg.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_syscfg.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis_lib/source/stm32f4xx_tim.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis_lib/source/stm32f4xx_usart.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis_lib/source/stm32f4xx_wwdg.o: C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source/stm32f4xx_wwdg.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


