#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

# Custom bootimg (recovery merged into boot ramdisk)
BOARD_CUSTOM_BOOTIMG_MK				:= device/samsung/bcm21553-common/bcm21553-bootimg.mk

# Kernel
BOARD_KERNEL_BASE				:= 0x81600000
BOARD_KERNEL_PAGESIZE				:= 4096
BOARD_NAND_PAGE_SIZE				:= 4096
BOARD_NAND_SPARE_SIZE				:= 128
TARGET_NO_BOOTLOADER				:= true
TARGET_NO_RADIOIMAGE				:= true

# Kernel ramdisk compression tool
MINIGZIP					:= $(shell which lzma)

# Kernel source
TARGET_KERNEL_CUSTOM_TOOLCHAIN			:= arm-eabi-4.4.3
ARM_EABI_TOOLCHAIN				:= $(ANDROID_BUILD_TOP)/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin
TARGET_KERNEL_SOURCE				:= kernel/samsung/bcm21553-common

# Recovery
TARGET_RECOVERY_FSTAB				:= device/samsung/bcm21553-common/recovery/recovery.fstab
BOARD_BML_BOOT					:= "/dev/block/bml7"
BOARD_BML_RECOVERY				:= "/dev/block/bml7"
BOARD_CUSTOM_RECOVERY_KEYMAPPING		:= ../../device/samsung/bcm21553-common/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS				:= ../../../device/samsung/bcm21553-common/recovery/graphics.c
BOARD_FLASH_BLOCK_SIZE				:= 131072
TARGET_USERIMAGES_USE_EXT4			:= true
BOARD_RECOVERY_HANDLES_MOUNT			:= true
BOARD_HAS_DOWNLOAD_MODE				:= true

# Platform
TARGET_BOARD_PLATFORM				:= bcm21553
TARGET_ARCH					:= arm
TARGET_ARCH_VARIANT				:= armv6-vfp
TARGET_CPU_ABI					:= armeabi-v6l
TARGET_CPU_ABI2					:= armeabi
TARGET_ARCH_VARIANT_FPU				:= vfp
TARGET_ARCH_VARIANT_CPU				:= arm1136jf-s
#TARGET_BOARD_PLATFORM_GPU			:= videocoreIV
TARGET_SPECIFIC_HEADER_PATH			:= device/samsung/bcm21553-common/include
BCM21553_HARDWARE				:= true
BOARD_USES_BROADCOM_HARDWARE			:= true
COMMON_GLOBAL_CFLAGS				+= -DBCM_HARDWARE
BOARD_USE_NASTY_PTHREAD_CREATE_HACK		:= true

# Audio
BOARD_USES_GENERIC_AUDIO 			:= false
TARGET_PROVIDES_LIBAUDIO			:= false
BOARD_USES_ALSA_AUDIO 				:= true
BUILD_WITH_ALSA_UTILS 				:= true

# Mobile Data
BOARD_MOBILEDATA_INTERFACE_NAME 		:= "pdp0"

# Camera
USE_CAMERA_STUB 				:= false
BOARD_USE_CAF_LIBCAMERA_GB_REL	 		:= true
BOARD_CAMERA_USE_GETBUFFERINFO	 		:= true
COMMON_GLOBAL_CFLAGS 				+= -DBINDER_COMPAT

# 3D
BOARD_EGL_CFG	 				:= device/samsung/bcm21553-common/prebuilt/lib/egl/egl.cfg
BOARD_NO_RGBX_8888				:= true
BOARD_USES_HGL					:= true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION		:= true
#TARGET_LIBAGL_USE_GRALLOC_COPYBITS		:= true
COMMON_GLOBAL_CFLAGS				+= -DNO_RGBX_8888

# USB
BOARD_USE_USB_MASS_STORAGE_SWITCH 		:= true
TARGET_USE_CUSTOM_LUN_FILE_PATH 		:= "/sys/devices/lm-2/gadget/lun0/file"
BOARD_UMS_LUNFILE 				:= "/sys/devices/lm-2/gadget/lun0/file"

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER 			:= WEXT
WPA_SUPPLICANT_VERSION 				:= VER_0_6_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB		:= lib_driver_cmd_wext
BOARD_WLAN_DEVICE				:= bcm4330
BOARD_WLAN_DEVICE_REV				:= bcm4330

WIFI_DRIVER_MODULE_PATH 			:= "/system/lib/modules/bcm4330.ko"
WIFI_DRIVER_FW_STA_PATH				:= "/system/etc/firmware/bcm4330_sta.bin"
WIFI_DRIVER_FW_AP_PATH 				:= "/system/etc/firmware/bcm4330_aps.bin"
WIFI_DRIVER_MODULE_ARG				:= "firmware_path=/system/etc/firmware/bcm4330_sta.bin nvram_path=/system/etc/firmware/nvram.txt"
WIFI_DRIVER_MODULE_NAME 			:= "bcm4330"

# Bluetooth
BOARD_HAVE_BLUETOOTH				:= true
BOARD_HAVE_BLUETOOTH_BCM			:= true

# Browser
JS_ENGINE					:= v8
HTTP						:= chrome
WITH_JIT					:= true
ENABLE_JSC_JIT					:= true
ENABLE_WEBGL				:= true
TARGET_WEBKIT_USE_MORE_MEMORY			:= true
TARGET_FORCE_CPU_UPLOAD				:= true

# FM
BOARD_HAVE_FM_RADIO				:= true
BOARD_GLOBAL_CFLAGS				+= -DHAVE_FM_RADIO
BOARD_FM_DEVICE					:= bcm4329
