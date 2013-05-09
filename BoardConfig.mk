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

USE_CAMERA_STUB := true
BOARD_USES_GENERIC_AUDIO := false

# inherit from the proprietary version
-include vendor/motorola/olympus/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := olympus
TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true

BOARD_CUSTOM_GRAPHICS := ../../../device/motorola/olympus/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/motorola/olympus/recovery/recovery_ui.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_HAS_SDCARD_INTERNAL := true

TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := false
TARGET_BOOTANIMATION_USE_RGB565 := true

# Kernel configuration for inline building
TARGET_KERNEL_CONFIG := tegra_olympus_cm10.1_defconfig
TARGET_PREBUILT_KERNEL := vendor/motorola/olympus/kernel

#OLYMPUS_WIFI_MODULE:
#	make -C kernel/motorola/olympus/wifi-module/open-src/src/dhd/linux/ \
#	ARCH="arm" CROSS_COMPILE="arm-eabi-" LINUXSRCDIR=kernel/olympus/ \
#	LINUXBUILDDIR=$(KERNEL_OUT) \
#	LINUXVER=$(shell cat $(KERNEL_OUT)/include/config/kernel.release ) \
#	BCM_INSTALLDIR="$(KERNEL_MODULES_OUT)"

#TARGET_KERNEL_MODULES := OLYMPUS_WIFI_MODULE

BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800

BOARD_HAS_NO_MISC_PARTITION := true
# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 8355840
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 4194304
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 407772160
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_JANKY_BACKBUFFER := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
# Below is a sample of how you can tweak the mount points using the board config.
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_IGNORE_BOOTABLES := true
BOARD_DATA_DEVICE := /dev/block/mmcblk0p16
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := nosuid,nodev,relatime,barrier=1,noauto_da_alloc
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p12
BOARD_SYSTEM_FILESYSTEM_OPTIONS := noatime,nodiratime,barrier=1,noauto_da_alloc
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p15
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := nosuid,nodev,relatime,barrier=1,noauto_da_alloc
BOARD_HAS_PREINSTALL := true
TARGET_NO_BOOT := false
TARGET_NO_RECOVERY := false

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
#BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p18
BOARD_VOLD_MAX_PARTITIONS := 19
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun0/file
BOARD_USES_MMCUTILS := true
BOARD_PREINSTALL_DEVICE := /dev/block/mmcblk0p17
BOARD_PREINSTALL_FILESYSTEM := ext3
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_USES_GL_VENDOR_EXTENSIONS := true

# WiFi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/vendor/firmware/fw_bcm4329.bin nvram_path=/system/etc/nvram.txt"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"
WIFI_DRIVER_SOCKET_IFACE    := eth0

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#EGL
BOARD_EGL_CFG := device/motorola/olympus/config/egl.cfg
USE_OPENGL_RENDERER := true

BOARD_HAS_LARGE_FILESYSTEM := true

#UMS, MTP
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_USE_MOTO_DOCK_HACK := true

BOARD_USES_AUDIO_LEGACY := true
COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB -DMOTOROLA_UIDS -DICS_CAMERA_BLOB

BOARD_MOBILEDATA_INTERFACE_NAME := "ppp0"

TARGET_SCREEN_WIDTH:=540
TARGET_SCREEN_HEIGHT:=960
