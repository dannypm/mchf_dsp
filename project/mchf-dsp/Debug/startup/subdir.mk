################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
C:/Projects/mcHFx/firmware/mchf_dsp/startup/startup_stm32f429xx.s 

C_SRCS += \
C:/Projects/mcHFx/firmware/mchf_dsp/startup/main.c 

OBJS += \
./startup/main.o \
./startup/startup_stm32f429xx.o 

C_DEPS += \
./startup/main.d 


# Each subdirectory must supply rules for building sources it contributes
startup/main.o: C:/Projects/mcHFx/firmware/mchf_dsp/startup/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DARM_MATH_CM4 -D__ASSEMBLY__ -D__FPU_PRESENT -D__FPU_USED -DSTM32F4XX -DSTM32F437VIT7 -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_boot" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/include" -I"C:/Projects/mcHFx/firmware/mchf_dsp/cmsis_lib/source" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/api" -I"C:/Projects/mcHFx/firmware/mchf_dsp/hardware" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/encoder" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/codec" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/cw" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio/softdds" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/audio" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/lcd" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui" -I"C:/Projects/mcHFx/firmware/mchf_dsp/misc/v_eeprom" -I"C:/Projects/mcHFx/firmware/mchf_dsp/drivers/ui/oscillator"  -O0 -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

startup/startup_stm32f429xx.o: C:/Projects/mcHFx/firmware/mchf_dsp/startup/startup_stm32f429xx.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


