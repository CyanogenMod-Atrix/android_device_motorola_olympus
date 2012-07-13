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

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

## (1) First, the most specific values, i.e. the aspects that are specific to GSM
PRODUCT_COPY_FILES += \
    device/motorola/olympus/init.olympus.rc:root/init.olympus.rc \
    device/motorola/olympus/init.olympus.usb.rc:root/init.olympus.usb.rc \
    device/motorola/olympus/ueventd.olympus.rc:root/ueventd.olympus.rc

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/motorola/olympus/olympus-vendor.mk)

# motorola helper scripts
PRODUCT_COPY_FILES += \
    device/motorola/olympus/scripts/pds_perm_fix.sh:system/bin/pds_perm_fix.sh \
    device/motorola/olympus/scripts/bt_init_wrapper.sh:system/bin/bt_init_wrapper.sh \
    device/motorola/olympus/scripts/usb_switch.sh:system/bin/usb_switch.sh

# sysctl conf
PRODUCT_COPY_FILES += \
    device/motorola/olympus/config/sysctl.conf:system/etc/sysctl.conf

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects

# Set en_US as default locale
PRODUCT_LOCALES := en_US

# olympus uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# not exactly xhdpi, but we have enough RAM, why not use it?
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# copy all kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell \
    find device/motorola/olympus/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

$(call inherit-product-if-exists, vendor/motorola/olympus/olympus-vendor.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_PACKAGES += Usb \
			DockAudio \
			OlympusParts \
			hciconfig \
			hcitool \
			rilwrap \
			hwcomposer.default \
			audio.primary.olympus \
			audio.a2dp.default

DEVICE_PACKAGE_OVERLAYS += device/motorola/olympus/overlay

# Board-specific init
PRODUCT_COPY_FILES += \
    device/motorola/olympus/config/vold.fstab:system/etc/vold.fstab \
    device/motorola/olympus/scripts/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    device/motorola/olympus/prebuilts/liba2dp.so:system/lib/liba2dp.so \
    device/motorola/olympus/config/media_profiles.xml:system/etc/media_profiles.xml

#keyboard files
PRODUCT_COPY_FILES += \
    device/motorola/olympus/keylayout/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl \
    device/motorola/olympus/keychars/tegra-kbc.kcm.bin:system/usr/keychars/tegra-kbc.kcm.bin \
    device/motorola/olympus/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/motorola/olympus/keylayout/qwerty.kl:system/usr/keylayout/BTC_USB_Cordless_Mouse.kl \
    device/motorola/olympus/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/motorola/olympus/keylayout/qtouch-obp-ts.kl:system/usr/keylayout/qtouch-obp-ts.kl \
    device/motorola/olympus/config/qtouch-obp-ts.idc:system/usr/idc/qtouch-obp-ts.idc \
    device/motorola/olympus/keylayout/Motorola_Mobility_Motorola_HD_Dock.kl:system/usr/keylayout/Motorola_Mobility_Motorola_HD_Dock.kl \
    device/motorola/olympus/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
    device/motorola/olympus/keylayout/evfwd.kl:system/usr/keylayout/evfwd.kl \
    device/motorola/olympus/keychars/evfwd.kcm.bin:system/usr/keychars/evfwd.kcm.bin \
    device/motorola/olympus/keylayout/usb_keyboard_102_en_us.kl:system/usr/keylayout/usb_keyboard_102_en_us.kl \
    device/motorola/olympus/keychars/usb_keyboard_102_en_us.kcm.bin:system/usr/keychars/usb_keyboard_102_en_us.kcm.bin \
    device/motorola/olympus/keylayout/usb_keyboard_102_en_us.kl:system/usr/keylayout/Motorola_Bluetooth_Wireless_Keyboard.kl \
    device/motorola/olympus/keychars/usb_keyboard_102_en_us.kcm.bin:system/usr/keychars/Motorola_Bluetooth_Wireless_Keyboard.kcm.bin

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_NAME := generic_olympus
PRODUCT_DEVICE := olympus
PRODUCT_MODEL := MB860
