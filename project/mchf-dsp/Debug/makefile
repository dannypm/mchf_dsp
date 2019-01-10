################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include stdio/subdir.mk
-include startup/subdir.mk
-include misc/v_eeprom/subdir.mk
-include hardware/subdir.mk
-include drivers/ui/oscillator/subdir.mk
-include drivers/ui/lcd/subdir.mk
-include drivers/ui/encoder/subdir.mk
-include drivers/ui/subdir.mk
-include drivers/audio/softdds/subdir.mk
-include drivers/audio/cw/subdir.mk
-include drivers/audio/codec/subdir.mk
-include drivers/audio/subdir.mk
-include drivers/api/subdir.mk
-include cmsis_lib/source/subdir.mk
-include cmsis_boot/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: mchf-dsp.elf

# Tool invocations
mchf-dsp.elf: $(OBJS) $(USER_OBJS) ../STM32F437VITx_FLASH.ld
	@echo 'Building target: $@'
	@echo 'Invoking: MCU GCC Linker'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -L"C:\Projects\mcHFx\firmware\mchf_dsp\libs"  -specs=nosys.specs -specs=nano.specs -T"../STM32F437VITx_FLASH.ld" -Wl,-Map=output.map -Wl,--gc-sections -o "mchf-dsp.elf" @"objects.list" $(USER_OBJS) $(LIBS) -lm
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

post-build:
	-@echo 'Generating binary and Printing size information:'
	arm-none-eabi-objcopy -O binary "mchf-dsp.elf" "mchf-dsp.bin"
	arm-none-eabi-size "mchf-dsp.elf"
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
