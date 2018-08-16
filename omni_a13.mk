# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit device configuration
$(call inherit-product, device/allwinner/a13/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_a13
PRODUCT_DEVICE := a13
PRODUCT_BRAND := allwinner
PRODUCT_MODEL := a13
PRODUCT_MANUFACTURER := allwinner

# If needed to overide these props
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    BUILD_FINGERPRINT="" \
#    PRIVATE_BUILD_DESC=""
