#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonades device
$(call inherit-product, device/oneplus/lemonades/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

PRODUCT_NAME := custom_lemonades
PRODUCT_DEVICE := lemonades
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2101

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus9R_IND-user 14 UKQ1.230924.001 R.1f0e589-1-3ea7e release-keys" \
    BuildFingerprint=OnePlus/OnePlus9R_IND/OnePlus9R:14/UKQ1.230924.001/R.1f0e589-1-3ea7e:user/release-keys \
    DeviceName=OnePlus9R \
    DeviceProduct=OnePlus9R \
    SystemDevice=OnePlus9R \
    SystemName=OnePlus9R

# Local release signing keys
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/local-certs/releasekey
PRODUCT_OTA_PUBLIC_KEYS := vendor/local-certs/releasekey
PRODUCT_EXTRA_RECOVERY_KEYS := vendor/local-certs/releasekey

-include vendor/lineage-priv/keys/keys.mk
