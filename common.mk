# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Recovery
PRODUCT_PACKAGES += \
    make_ext4fs \
    dexpreopt \
    dump_image \
    e2fsck \
    erase_image \
    flash_image \
    tune2fs \

# Live Wallpapers
PRODUCT_PACKAGES += \
    HoloSpiralWallpaper \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

# Kernel modules
PRODUCT_COPY_FILES += \
    device/samsung/bcm21553-common/prebuilt/lib/modules/bcm4330.ko:system/lib/modules/bcm4330.ko \
    device/samsung/bcm21553-common/prebuilt/lib/modules/brcm-headsetsw.ko:system/lib/modules/brcm-headsetsw.ko \
    device/samsung/bcm21553-common/prebuilt/lib/modules/brcm_switch.ko:system/lib/modules/brcm_switch.ko \
    device/samsung/bcm21553-common/prebuilt/lib/modules/h6270enc.ko:system/lib/modules/h6270enc.ko \
    device/samsung/bcm21553-common/prebuilt/lib/modules/hx170dec.ko:system/lib/modules/hx170dec.ko

# Keychars
PRODUCT_COPY_FILES += \
    device/samsung/bcm21553-common/prebuilt/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/samsung/bcm21553-common/prebuilt/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/samsung/bcm21553-common/prebuilt/usr/keychars/sec_key.kcm.bin:system/usr/keychars/sec_key.kcm.bin

# Keymap
PRODUCT_COPY_FILES += \
    device/samsung/bcm21553-common/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/samsung/bcm21553-common/prebuilt/usr/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    device/samsung/bcm21553-common/prebuilt/usr/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
    device/samsung/bcm21553-common/prebuilt/usr/keylayout/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
    device/samsung/bcm21553-common/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/samsung/bcm21553-common/prebuilt/usr/keylayout/sec_keypad.kl:system/usr/keylayout/sec_keypad.kl

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/bcm21553-common/prebuilt/etc/asound.conf:system/etc/asound.conf

# Vold
PRODUCT_COPY_FILES += \
    device/samsung/bcm21553-common/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# GPS
PRODUCT_COPY_FILES += \
    device/samsung/bcm21553-common/prebuilt/etc/gps.conf:system/etc/gps.conf

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/bcm21553-common/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/bcm21553-common/prebuilt/bin/get_macaddrs:system/bin/get_macaddrs

# Bluetooth
PRODUCT_COPY_FILES += \
    device/samsung/bcm21553-common/prebuilt/etc/bluetooth/audio.conf:system/etc/bluetooth/audio.conf \
    device/samsung/bcm21553-common/prebuilt/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES := \
    ro.opengles.version=131072
