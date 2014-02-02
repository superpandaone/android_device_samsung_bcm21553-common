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

PRODUCT_PACKAGES += \
    make_ext4fs \
    dexpreopt \
    dump_image \
    e2fsck \
    erase_image \
    flash_image \
    tune2fs \

# Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/bcm21553-common/prebuilt/root/default.prop:root/default.prop \
    device/samsung/bcm21553-common/prebuilt/root/fota.rc:root/fota.rc \
    device/samsung/bcm21553-common/prebuilt/root/init:root/init \
    device/samsung/bcm21553-common/prebuilt/root/init.bcm21553.rc:root/init.bcm21553.rc \
    device/samsung/bcm21553-common/prebuilt/root/init.charge.rc:root/init.charge.rc \
    device/samsung/bcm21553-common/prebuilt/root/init.goldfish.rc:root/init.goldfish.rc \
    device/samsung/bcm21553-common/prebuilt/root/init.rc:root/init.rc \
    device/samsung/bcm21553-common/prebuilt/root/j4fs.ko:root/j4fs.ko \
    device/samsung/bcm21553-common/prebuilt/root/recovery.rc:root/recovery.rc \
    device/samsung/bcm21553-common/prebuilt/root/sec_param.ko:root/sec_param.ko \
    device/samsung/bcm21553-common/prebuilt/root/ueventd.rc:root/ueventd.rc

# CWM scripts
PRODUCT_COPY_FILES += \
    device/samsung/bcm21553-common/prebuilt/root/sbin/fix_permissions:root/sbin/fix_permissions \
    device/samsung/bcm21553-common/prebuilt/root/sbin/killrecovery.sh:root/sbin/killrecovery.sh \
    device/samsung/bcm21553-common/prebuilt/root/sbin/nandroid-md5.sh:root/sbin/nandroid-md5.sh

# Patched Images
PRODUCT_COPY_FILES += \
    device/samsung/bcm21553-common/prebuilt/root/res/images/icon_clockwork:root/sbin/fix_permissions \
    device/samsung/bcm21553-common/prebuilt/root/res/images/icon_error:root/sbin/fix_permissions \
    device/samsung/bcm21553-common/prebuilt/root/res/images/icon_firmware_error:root/sbin/fix_permissions \
    device/samsung/bcm21553-common/prebuilt/root/res/images/icon_firmware_install:root/sbin/fix_permissions \
    device/samsung/bcm21553-common/prebuilt/root/res/images/icon_installing:root/sbin/fix_permissions \
    device/samsung/bcm21553-common/prebuilt/root/res/images/progress_fill:root/sbin/fix_permissions
