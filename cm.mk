
# Release name
PRODUCT_RELEASE_NAME := ef39s

# Inherit device configuration
$(call inherit-product, device/pantech/ef39s/device_ef39s.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef39s
PRODUCT_NAME := cm_ef39s
PRODUCT_BRAND := pantech
PRODUCT_MODEL := IM-A800S
PRODUCT_MANUFACTURER := pantech
