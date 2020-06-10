################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
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
Interrupt-Input-button.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
Interrupt-Input-button.list \

OBJCOPY_BIN += \
Interrupt-Input-button.bin \


# All Target
all: Interrupt-Input-button.elf secondary-outputs

# Tool invocations
Interrupt-Input-button.elf: $(OBJS) $(USER_OBJS) C:\Users\blueh\Desktop\STM32-drivers-freeRTOS\Interrupt-Input-button\Interrupt-Input-button\STM32F446RETX_FLASH.ld
	arm-none-eabi-gcc -o "Interrupt-Input-button.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\blueh\Desktop\STM32-drivers-freeRTOS\Interrupt-Input-button\Interrupt-Input-button\STM32F446RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="Interrupt-Input-button.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

Interrupt-Input-button.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "Interrupt-Input-button.list"
	@echo 'Finished building: $@'
	@echo ' '

Interrupt-Input-button.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "Interrupt-Input-button.bin"
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
