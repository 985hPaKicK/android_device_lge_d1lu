# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := d1lu

TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/d1lu/device_d1lu.mk)

# Device naming
PRODUCT_DEVICE := d1lu
PRODUCT_NAME := cm_d1lu
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-F160L
PRODUCT_MANUFACTURER := lge

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_d1lu BUILD_FINGERPRINT=tmous/d1lu/d1lu:4.0.3/IML74K/47441.16:user/release-keys PRIVATE_BUILD_DESC="1.53.401.16 CL47741 release-keys" BUILD_NUMBER=47741
