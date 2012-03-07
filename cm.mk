## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

## Release name
PRODUCT_RELEASE_NAME := Atrix
 
## Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
 
## Inherit device configuration
$(call inherit-product, device/motorola/olympus/olympus.mk)
 
PRODUCT_NAME := cm_olympus
 
## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := olympus

## Device fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_BRAND=MOTO PRODUCT_NAME=olyatt BUILD_PRODUCT=olyatt BUILD_FINGERPRINT=MOTO/olyatt/olympus:2.3.4/4.5.91/110625:user/release-keys PRIVATE_BUILD_DESC="olympus-user 2.3.4 4.5.91 110625 release-keys"
