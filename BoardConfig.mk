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

BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := false
TARGET_BOOTANIMATION_USE_RGB565 := true

# Kernel configuration for inline building
TARGET_KERNEL_CONFIG := tegra_olympus_cm10.1_defconfig
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800

#storage
TARGET_NO_BOOT := false
TARGET_NO_RECOVERY := false
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_JANKY_BACKBUFFER := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8355840
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 407772160
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
BOARD_RECOVERY_IGNORE_BOOTABLES := true
BOARD_VOLD_MAX_PARTITIONS := 19
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
#UMS, MTP
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# WiFi
BOARD_LEGACY_NL80211_STA_EVENTS:=true
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_MODULE_NAME     := "bcmdhd"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/vendor/firmware/fw_bcmdhd.bin nvram_path=/system/etc/nvram.txt"
WIFI_DRIVER_MODULE_AP_ARG   := "firmware_path=/system/vendor/firmware/fw_bcmdhd_apsta.bin nvram_path=/system/etc/nvram.txt"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/vendor/firmware/fw_bcmdhd_p2p.bin"
-include hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/motorola/olympus/bluetooth/vnd_olympus.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/motorola/olympus/bluetooth
BOARD_BLUETOOTH_LIBBT_VNDCFG := device/motorola/olympus/bluetooth/bt_vendor.conf
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := true

#EGL
BOARD_EGL_CFG := device/motorola/olympus/config/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_GL_VENDOR_EXTENSIONS := true

BOARD_USE_MOTO_DOCK_HACK := true
BOARD_USES_AUDIO_LEGACY := true
COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB -DMOTOROLA_UIDS -DICS_CAMERA_BLOB
BOARD_MOBILEDATA_INTERFACE_NAME := "ppp0"
TARGET_SCREEN_WIDTH:=540
TARGET_SCREEN_HEIGHT:=960
