$(call inherit-product, device/htc/inc/inc.mk)
$(call inherit-product, vendor/salvage/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := salvage_inc
PRODUCT_BRAND := htc
PRODUCT_DEVICE := inc
PRODUCT_MODEL := Incredible
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRJ22 PRODUCT_NAME=inc BUILD_FINGERPRINT=verizon_wwe/inc/inc/inc:2.2/FRF91/264707:user/release-keys PRODUCT_BRAND=verizon_wwe TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="3.26.605.1 CL264707 release-keys" PRODUCT_MODEL=ADR6300 PRODUCT_MANUFACTURER=HTC

PRODUCT_PROPERTY_OVERRIDES += ro.product.version=3.26.605.1

# Extra Passion overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/salvage/overlay/inc

# Add the Torch app
PRODUCT_PACKAGES += Torch

#
# Set ro.modversion
#
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SalvageMod-1.4

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/salvage/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

