# Inherit common Salvage-Mod stuff
$(call inherit-product, vendor/salvage/products/common.mk)

# Bring in all audio files
include frameworks/base/data/sounds/AudioPackage2.mk

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Thunderfoot.ogg \
    ro.config.notification_sound=Beat_Box_Android.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg
