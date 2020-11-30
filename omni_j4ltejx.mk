
# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier
PRODUCT_DEVICE := j4ltejx
PRODUCT_NAME := omni_j4ltejx
PRODUCT_MODEL := SM-J400F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
