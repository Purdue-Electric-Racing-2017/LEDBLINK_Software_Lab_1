################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Utilities/stm32f4_discovery.c \
../Utilities/stm32f4_discovery_lis302dl.c 

OBJS += \
./Utilities/stm32f4_discovery.o \
./Utilities/stm32f4_discovery_lis302dl.o 

C_DEPS += \
./Utilities/stm32f4_discovery.d \
./Utilities/stm32f4_discovery_lis302dl.d 


# Each subdirectory must supply rules for building sources it contributes
Utilities/%.o: ../Utilities/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32F407VGTx -DSTM32F4 -DSTM32F4DISCOVERY -DSTM32 -DDEBUG -DUSE_STDPERIPH_DRIVER -DSTM32F40XX -DSTM32F40_41xxx -I"C:/Users/Matt Flanagan/Desktop/PER/PER_CODE/LEDBLINK/inc" -I"C:/Users/Matt Flanagan/Desktop/PER/PER_CODE/LEDBLINK/CMSIS/core" -I"C:/Users/Matt Flanagan/Desktop/PER/PER_CODE/LEDBLINK/CMSIS/device" -I"C:/Users/Matt Flanagan/Desktop/PER/PER_CODE/LEDBLINK/fat_fs/inc" -I"C:/Users/Matt Flanagan/Desktop/PER/PER_CODE/LEDBLINK/StdPeriph_Driver/inc" -I"C:/Users/Matt Flanagan/Desktop/PER/PER_CODE/LEDBLINK/USB_Device_Library/Class/audio/inc" -I"C:/Users/Matt Flanagan/Desktop/PER/PER_CODE/LEDBLINK/USB_Device_Library/Class/cdc/inc" -I"C:/Users/Matt Flanagan/Desktop/PER/PER_CODE/LEDBLINK/USB_Device_Library/Class/dfu/inc" -I"C:/Users/Matt Flanagan/Desktop/PER/PER_CODE/LEDBLINK/USB_Device_Library/Class/hid/inc" -I"C:/Users/Matt Flanagan/Desktop/PER/PER_CODE/LEDBLINK/USB_Device_Library/Class/msc/inc" -I"C:/Users/Matt Flanagan/Desktop/PER/PER_CODE/LEDBLINK/USB_Device_Library/Core/inc" -I"C:/Users/Matt Flanagan/Desktop/PER/PER_CODE/LEDBLINK/USB_HOST_Library/Class/HID/inc" -I"C:/Users/Matt Flanagan/Desktop/PER/PER_CODE/LEDBLINK/USB_HOST_Library/Class/MSC/inc" -I"C:/Users/Matt Flanagan/Desktop/PER/PER_CODE/LEDBLINK/USB_HOST_Library/Core/inc" -I"C:/Users/Matt Flanagan/Desktop/PER/PER_CODE/LEDBLINK/USB_OTG_Driver/inc" -I"C:/Users/Matt Flanagan/Desktop/PER/PER_CODE/LEDBLINK/Utilities" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


