# Inherit AOSP device configuration for generic target
$(call inherit-product, build/target/product/full.mk)

# Inherit some common Salvage-Mod stuff.
$(call inherit-product, vendor/salvage/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := salvage_generic
PRODUCT_BRAND := Salvage-Mod
PRODUCT_DEVICE := generic
PRODUCT_MODEL := Salvage-Mod
PRODUCT_MANUFACTURER := Salvage-Mod

#
# Move dalvik cache to data partition where there is more room to solve startup problems
#
PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.dexopt-data-only=1

# Generic modversion
#ro.modversion=Salvage-Mod v1.1
