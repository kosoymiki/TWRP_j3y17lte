#
# Copyright (C) 2018 The Android Open Source Project
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
#

LOCAL_PATH := device/samsung/j3y17lte

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := j3y17lte
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := generic

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

# Kernel properties
BOARD_KERNEL_CMDLINE :=  androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt $(LOCAL_PATH)/dt.img

TARGET_PREBUILT_KERNEL := device/samsung/j3y17lte/kernel
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/j3y17lte/bootimg.mk

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12075401216  
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_SUPPRESS_EMMC_WIPE := true

# TWRP
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_BRIGHTNESS_PATH := "/sys/devices/14800000.dsim/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_NTFS_3G := true
TW_EXTRA_LANGUAGES := true
# Misc
TW_NO_SCREEN_TIMEOUT := true
TW_USE_TOOLBOX := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_DEFAULT_LANGUAGE := ru
#TW_DEVICE_VERSION := by mehanik6 and Maslo_Jojoba
# Crypto
TW_INCLUDE_CRYPTO := true

ALLOW_MISSING_DEPENDENCIES := true
