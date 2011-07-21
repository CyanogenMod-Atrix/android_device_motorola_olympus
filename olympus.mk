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
# This is the product configuration for a generic GSM passion,
# not specialized for any geography.
#

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

## (1) First, the most specific values, i.e. the aspects that are specific to GSM
PRODUCT_COPY_FILES += \
    device/motorola/olympus/init.mapphone_cdma.rc:root/init.mapphone_cdma.rc \
    device/motorola/olympus/init.mapphone_umts.rc:root/init.mapphone_umts.rc \
    device/motorola/olympus/ueventd.rc:root/ueventd.rc

## (2) Also get non-open-source CDMA-specific aspects if available
$(call inherit-product-if-exists, vendor/motorola/olympus/olympus-vendor.mk)

# media config xml file
PRODUCT_COPY_FILES += \
    device/motorola/olympus/media_profiles.xml:system/etc/media_profiles.xml

## (3)  Finally, the least specific parts, i.e. the non-CDMA-specific aspects

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# droid2 uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# copy all kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell \
    find device/motorola/olympus/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/motorola/olympus/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product-if-exists, vendor/motorola/olympus/olympus-vendor.mk)

$(call inherit-product, build/target/product/full_base.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/olympus/overlay

PRODUCT_NAME := generic_olympus
PRODUCT_DEVICE := olympus
