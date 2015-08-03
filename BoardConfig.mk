#
# Copyright (C) 2012 The CyanogenMod Project
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
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/smdk4412-common/BoardCommonConfig.mk

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11408506880

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := xmm6262
TARGET_SPECIFIC_HEADER_PATH := device/samsung/t03gchnduos/include

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/t03gchnduos/bluetooth

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := cyanogenmod_t03gchnduos_defconfig
BOARD_KERNEL_CMDLINE := console=ttySAC2,115200 androidboot.selinux=permissive

# ril
BOARD_RIL_CLASS := ../../../device/samsung/t03gchnduos/ril/telephony/java

# Selinux
#BOARD_SEPOLICY_DIRS := \
    device/samsung/t03gchnduos/selinux

#BOARD_SEPOLICY_UNION := \
    device.te \
    domain.te \
    file.te \
    file_contexts \
    init.te \
    mediaserver.te \
    rild.te \
    system.te \
    ueventd.te \
    vold.te \
    wpa_supplicant.te

# assert
TARGET_OTA_ASSERT_DEVICE := t03gchnduos,n7102,GT-N7102

# inherit from the proprietary version
-include vendor/samsung/t03gchnduos/BoardConfigVendor.mk

# Blobs
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/t03gchnduos/rootdir/fstab.smdk4x12
RECOVERY_FSTAB_VERSION := 2

# Camera wrapper
TARGET_PROVIDES_CAMERA_HAL := true
