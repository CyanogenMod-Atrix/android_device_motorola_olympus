# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

USE_CAMERA_STUB := false
BOARD_USES_GENERIC_AUDIO := false

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := olympus
TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
TARGET_HAVE_TEGRA_ERRATA_657451 := true

BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/motorola/olympus/recovery/recovery_ui.c
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x
BOARD_PAGE_SIZE := 0x
BOARD_HAS_NO_MISC_PARTITION := true
# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_JANKY_BACKBUFFER := true
TARGET_PREBUILT_KERNEL := device/motorola/olympus/kernel
TARGET_USERIMAGES_USE_EXT4 := true
# Below is a sample of how you can tweak the mount points using the board config.
BOARD_HAS_NO_MISC_PARTITION := ture
BOARD_RECOVERY_IGNORE_BOOTABLES := true
BOARD_DATA_DEVICE := /dev/block/mmcblk0p16
BOARD_DATA_FILESYSTEM := ext3
BOARD_DATA_FILESYSTEM_OPTIONS := nosuid,nodev,relatime,data=ordered
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p12
BOARD_SYSTEM_FILESYSTEM_OPTIONS := noatime,nodiratime,data=ordered
BOARD_SYSTEM_FILESYSTEM := ext3
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p15
BOARD_CACHE_FILESYSTEM := ext3
BOARD_CACHE_FILESYSTEM_OPTIONS := nosuid,nodev,relatime,data=ordered
BOARD_HIJACK_RECOVERY_PATH := /preinstall/
BOARD_HAS_PREINSTALL := true
TARGET_NO_BOOT := false
TARGET_NO_RECOVERY := false

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1

BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1

#BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p18

BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_UMS_LUNFILE := /sys/devices/platform/usb_mass_storage/lun0/file
BOARD_HIJACK_BOOT_PATH := /preinstall/
BOARD_HIJACK_EXECUTABLES := logwrapper
BOARD_HIJACK_LOG_ENABLE := false
BOARD_USES_MMCUTILS := true
BOARD_HIJACK_UPDATE_BINARY := /preinstall/update-binary
BOARD_HIJACK_BOOT_UPDATE_ZIP := /preinstall/update-boot.zip
BOARD_HIJACK_RECOVERY_UPDATE_ZIP := /preinstall/update-recovery.zip
BOARD_PREINSTALL_DEVICE := /dev/block/mmcblk0p17
BOARD_PREINSTALL_FILESYSTEM := ext3
BOARD_HAS_NO_SELECT_BUTTON := true
