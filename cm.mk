# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/hercules/full_hercules.mk)

# Unofficial build ID
TARGET_UNOFFICIAL_BUILD_ID := Sultan

PRODUCT_DEVICE := hercules
PRODUCT_NAME := cm_hercules

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T989 TARGET_DEVICE=SGH-T989 BUILD_FINGERPRINT="samsung/SGH-T989/SGH-T989:4.1.2/JZO54K/T989UCMC1:user/release-keys" PRIVATE_BUILD_DESC="SGH-T989-user 4.1.2 JZO54K T989UCMC1 release-keys"
