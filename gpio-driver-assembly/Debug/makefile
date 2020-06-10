################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
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
gpio-driver-assembly.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
gpio-driver-assembly.list \

OBJCOPY_BIN += \
gpio-driver-assembly.bin \


# All Target
all: gpio-driver-assembly.elf secondary-outputs

# Tool invocations
gpio-driver-assembly.elf: $(OBJS) $(USER_OBJS) C:\Users\blueh\Desktop\STM32-drivers-freeRTOS\gpio-driver-assembly\STM32F446RETX_FLASH.ld
	arm-none-eabi-gcc -o "gpio-driver-assembly.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\blueh\Desktop\STM32-drivers-freeRTOS\gpio-driver-assembly\STM32F446RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="gpio-driver-assembly.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

gpio-driver-assembly.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "gpio-driver-assembly.list"
	@echo 'Finished building: $@'
	@echo ' '

gpio-driver-assembly.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "gpio-driver-assembly.bin"
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
