################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Dev/project/Android_Oscilloscope/device_firm/USB_scope/USB_Scope_M4/src/src/scope_init.c \
C:/Dev/project/Android_Oscilloscope/device_firm/USB_scope/USB_Scope_M4/src/src/scope_main.c 

OBJS += \
./ex_src/scope_init.o \
./ex_src/scope_main.o 

C_DEPS += \
./ex_src/scope_init.d \
./ex_src/scope_main.d 


# Each subdirectory must supply rules for building sources it contributes
ex_src/scope_init.o: C:/Dev/project/Android_Oscilloscope/device_firm/USB_scope/USB_Scope_M4/src/src/scope_init.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DDEBUG -D__CODE_RED -DCORE_M4 -D__USE_CMSIS=CMSIS_LPC43xx_DriverLib -D__LPC43XX__ -D__MULTICORE_MASTER -D__MULTICORE_MASTER_SLAVE_M0APP -D__REDLIB__ -I"C:\Dev\project\Android_Oscilloscope\device_firm\USB_scope\MY_CMSIS_LPC43xx_DriverLib\inc" -I"C:\Dev\project\Android_Oscilloscope\device_firm\USB_scope\USB_Scope_M4\src\inc" -I"C:\Dev\project\Android_Oscilloscope\device_firm\USB_scope\USB_Scope_BOOT_M4\src\inc" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ex_src/scope_main.o: C:/Dev/project/Android_Oscilloscope/device_firm/USB_scope/USB_Scope_M4/src/src/scope_main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DDEBUG -D__CODE_RED -DCORE_M4 -D__USE_CMSIS=CMSIS_LPC43xx_DriverLib -D__LPC43XX__ -D__MULTICORE_MASTER -D__MULTICORE_MASTER_SLAVE_M0APP -D__REDLIB__ -I"C:\Dev\project\Android_Oscilloscope\device_firm\USB_scope\MY_CMSIS_LPC43xx_DriverLib\inc" -I"C:\Dev\project\Android_Oscilloscope\device_firm\USB_scope\USB_Scope_M4\src\inc" -I"C:\Dev\project\Android_Oscilloscope\device_firm\USB_scope\USB_Scope_BOOT_M4\src\inc" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


