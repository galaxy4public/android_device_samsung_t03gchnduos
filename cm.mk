# Release name
PRODUCT_RELEASE_NAME := t03gduoszc

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/t03gchnduos/full_t03gchnduos.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t03gchnduos
PRODUCT_NAME := cm_t03gchnduos
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-N7102
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=$(PRODUCT_RELEASE_NAME) \
    TARGET_DEVICE=$(PRODUCT_DEVICE) \
    PRIVATE_BUILD_DESC="$(PRODUCT_RELEASE_NAME)-user 4.3 JSS15J N7102ZCUEML1 release-keys" \
    BUILD_FINGERPRINT="samsung/$(PRODUCT_RELEASE_NAME)/$(PRODUCT_DEVICE):4.3/JSS15J/N7102ZCUEML1:user/release-keys"
