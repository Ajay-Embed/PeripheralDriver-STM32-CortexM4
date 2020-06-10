################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
gpio-driver-BareMetal.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
gpio-driver-BareMetal.list \

OBJCOPY_BIN += \
gpio-driver-BareMetal.bin \


# All Target
all: gpio-driver-BareMetal.elf secondary-outputs

# Tool invocations
gpio-driver-BareMetal.elf: $(OBJS) $(USER_OBJS) C:\Users\blueh\Desktop\STM32-drivers-freeRTOS\gpio-driver-BareMetal\STM32F446RETX_FLASH.ld
	arm-none-eabi-gcc -o "gpio-driver-BareMetal.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\blueh\Desktop\STM32-drivers-freeRTOS\gpio-driver-BareMetal\STM32F446RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="gpio-driver-BareMetal.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

gpio-driver-BareMetal.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "gpio-driver-BareMetal.list"
	@echo 'Finished building: $@'
	@echo ' '

gpio-driver-BareMetal.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "gpio-driver-BareMetal.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
