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

# Set this up here so that BoardVendorConfig.mk can override it

LOCAL_PATH:= $(call my-dir)

# Board
TARGET_ARCH_VARIANT				:= armv6-vfp
TARGET_CPU_ABI	 				:= armeabi-v6l
TARGET_CPU_ABI2 				:= armeabi
TARGET_NO_BOOTLOADER	 			:= true
TARGET_NO_RADIOIMAGE	 			:= true
BCM21553_HARDWARE				:= true
BOARD_USES_BROADCOM_HARDWARE			:= true
COMMON_GLOBAL_CFLAGS				+= -DBCM_HARDWARE

# Kernel
BOARD_KERNEL_BASE				:= 0x81600000
BOARD_KERNEL_PAGESIZE				:= 4096
BOARD_NAND_PAGE_SIZE				:= 4096
BOARD_NAND_SPARE_SIZE				:= 128
TARGET_NO_BOOTLOADER				:= true
TARGET_NO_RADIOIMAGE				:= true

# Custom bootimg (recovery merged into boot ramdisk)
BOARD_CUSTOM_BOOTIMG_MK				:= device/samsung/bcm21553-common/bcm21553-bootimg.mk

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING		:= ../../device/samsung/bcm21553-common/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS				:= ../../../device/samsung/bcm21553-common/recovery/graphics.c
BOARD_BML_BOOT					:= "/dev/block/bml7"
BOARD_BML_RECOVERY				:= "/dev/block/bml7"
BOARD_FLASH_BLOCK_SIZE				:= 131072
BCM21553_RECOVERY				:= true
TARGET_USERIMAGES_USE_EXT4			:= true
BOARD_RECOVERY_HANDLES_MOUNT			:= true

# Audio
BOARD_USES_GENERIC_AUDIO 			:= false
TARGET_PROVIDES_LIBAUDIO			:= false
BOARD_USES_ALSA_AUDIO 				:= true
BUILD_WITH_ALSA_UTILS 				:= true

# Camera
USE_CAMERA_STUB 				:= false
BOARD_USE_CAF_LIBCAMERA_GB_REL	 		:= true
BOARD_CAMERA_USE_GETBUFFERINFO	 		:= true

# 3D
BOARD_EGL_CFG	 				:= device/samsung/bcm21553-common/prebuilt/lib/egl/egl.cfg
BOARD_USES_HGL					:= true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION		:= true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS		:= true
USE_OPENGL_RENDER 				:= true
TARGET_ELECTRONBEAM_FRAMES 			:= 20

# Mobile Data
BOARD_MOBILEDATA_INTERFACE_NAME 		:= "pdp0"

# JIT / Optimizations
WITH_JIT 					:= true
ENABLE_JSC_JIT	 				:= true
BOARD_USE_SCREENCAP 			 	:= true
JS_ENGINE 					:= v8

# USB
BOARD_USE_USB_MASS_STORAGE_SWITCH 		:= true
TARGET_USE_CUSTOM_LUN_FILE_PATH 		:= "/sys/devices/lm-2/gadget/lun0/file"
BOARD_UMS_LUNFILE 				:= "/sys/devices/lm-2/gadget/lun0/file"

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER 			:= WEXT
BOARD_WLAN_DEVICE				:= bcm4330
WPA_SUPPLICANT_VERSION 				:= VER_0_6_X
WIFI_DRIVER_MODULE_PATH 			:= "/system/lib/modules/bcm4330.ko"
WIFI_DRIVER_FW_STA_PATH				:= "/system/etc/firmware/bcm4330_sta.bin"
WIFI_DRIVER_FW_AP_PATH 				:= "/system/etc/firmware/bcm4330_aps.bin"
WIFI_DRIVER_MODULE_ARG				:= "firmware_path=/system/etc/firmware/bcm4330_sta.bin nvram_path=/system/etc/firmware/nvram.txt"
WIFI_DRIVER_MODULE_NAME 			:= "bcm4330"

# Bluetooth
BOARD_HAVE_BLUETOOTH				:= true
BOARD_HAVE_BLUETOOTH_BCM			:= true

# FM
BOARD_HAVE_FM_RADIO				:= true
BOARD_GLOBAL_CFLAGS				+= -DHAVE_FM_RADIO
BOARD_FM_DEVICE					:= bcm4329
