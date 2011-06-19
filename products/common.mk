# Generic Salvage-Mod product
PRODUCT_NAME := salvage
PRODUCT_BRAND := salvage
PRODUCT_DEVICE := generic

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
#TINY_TOOLBOX:=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Salvage-Mod specific product packages
PRODUCT_PACKAGES += \
    SalvageParts \

# Extra tools in Salvage-Mod
#PRODUCT_PACKAGES += \
#    openvpn

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \
    vendor/salvage/CHANGELOG.mkdn:system/etc/CHANGELOG-Salvage-Mod.txt

# Common Salvage-Mod overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/salvage/overlay/common

#PRODUCT_COPY_FILES += \
#    vendor/salvage/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Always run in insecure mode, enables root on user build variants
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

#PRODUCT_PACKAGES += \
#    Provision \
#    GoogleSearch \
#    LatinIME
