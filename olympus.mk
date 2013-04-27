#
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

#
# This is the product configuration for a generic GSM olympus,
# not specialized for any geography.
#
LOCAL_PATH := device/motorola/olympus

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

## (1) First, the most specific values, i.e. the aspects that are specific to GSM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/root/init.olympus.rc:root/init.olympus.rc \
    $(LOCAL_PATH)/root/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/root/init.olympus.usb.rc:root/init.olympus.usb.rc \
    $(LOCAL_PATH)/root/ueventd.olympus.rc:root/ueventd.olympus.rc \
    $(LOCAL_PATH)/root/fstab.olympus:root/fstab.olympus

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/motorola/olympus/olympus-vendor.mk)

# motorola helper scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/scripts/pds_perm_fix.sh:system/bin/pds_perm_fix.sh

# sysctl conf
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/sysctl.conf:system/etc/sysctl.conf \
    $(LOCAL_PATH)/config/audio_policy.conf:system/etc/audio_policy.conf

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects

# Set en_US as default locale
PRODUCT_LOCALES := en_US

# olympus uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# not exactly xhdpi, but we have enough RAM, why not use it?
$(call inherit-product, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/motorola/olympus/olympus-vendor.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)

#fs tools
PRODUCT_PACKAGES += make_ext4fs \
			e2fsck \
 			setup_fs

#bluetooth
PRODUCT_PACKAGES += l2ping \
			hciconfig \
			hcitool

#Audio
PRODUCT_PACKAGES += DockAudio \
			audio.usb.default \
			audio.a2dp.default

#Camera and lights
PRODUCT_PACKAGES += Torch \
			lights.olympus

PRODUCT_PACKAGES += com.android.future.usb.accessory \
			mot_boot_mode \
			OlympusParts

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Board-specific init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/scripts/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    $(LOCAL_PATH)/config/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/config/touchpad.cfg:system/etc/touchpad/22/touchpad.cfg \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml

#keyboard files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl \
    $(LOCAL_PATH)/keychars/tegra-kbc.kcm.bin:system/usr/keychars/tegra-kbc.kcm.bin \
    $(LOCAL_PATH)/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    $(LOCAL_PATH)/keylayout/qwerty.kl:system/usr/keylayout/BTC_USB_Cordless_Mouse.kl \
    $(LOCAL_PATH)/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/keylayout/qtouch-obp-ts.kl:system/usr/keylayout/qtouch-obp-ts.kl \
    $(LOCAL_PATH)/config/qtouch-obp-ts.idc:system/usr/idc/qtouch-obp-ts.idc \
    $(LOCAL_PATH)/keylayout/Motorola_Mobility_Motorola_HD_Dock.kl:system/usr/keylayout/Motorola_Mobility_Motorola_HD_Dock.kl \
    $(LOCAL_PATH)/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
    $(LOCAL_PATH)/keylayout/evfwd.kl:system/usr/keylayout/evfwd.kl \
    $(LOCAL_PATH)/keychars/evfwd.kcm.bin:system/usr/keychars/evfwd.kcm.bin \
    $(LOCAL_PATH)/keylayout/usb_keyboard_102_en_us.kl:system/usr/keylayout/usb_keyboard_102_en_us.kl \
    $(LOCAL_PATH)/keychars/usb_keyboard_102_en_us.kcm.bin:system/usr/keychars/usb_keyboard_102_en_us.kcm.bin \
    $(LOCAL_PATH)/keylayout/usb_keyboard_102_en_us.kl:system/usr/keylayout/Motorola_Bluetooth_Wireless_Keyboard.kl \
    $(LOCAL_PATH)/keychars/usb_keyboard_102_en_us.kcm.bin:system/usr/keychars/Motorola_Bluetooth_Wireless_Keyboard.kcm.bin

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_NAME := generic_olympus
PRODUCT_DEVICE := olympus
PRODUCT_MODEL := MB860
