# Inherit AOSP device configuration for incredible.
$(call inherit-product, device/htc/inc/inc.mk)

# Inherit some common Salvage-Mod stuff.
$(call inherit-product, vendor/salvage/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := salvage_incredible
PRODUCT_BRAND := htc
PRODUCT_DEVICE := inc
PRODUCT_MODEL := Incredible
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=SalvageMod-1.3-stable PRODUCT_NAME=inc BUILD_FINGERPRINT=verizon_wwe/inc/inc/inc:2.2/FRF91/264707:user/release-keys PRODUCT_BRAND=verizon_wwe TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="3.26.605.1 CL264707 release-keys" PRODUCT_MODEL=ADR6300 PRODUCT_MANUFACTURER=HTC

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SalvageMod-1.3-stable

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=lithid_supersonic_defconfig

# Extra Supersonic overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/salvage/overlay/inc

# Add the Torch app
#PRODUCT_PACKAGES += Torch

# Broadcom FM radio
#$(call inherit-product, vendor/salvage/products/bcm_fm_radio.mk)

#
# Copy Incredible specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/salvage/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
