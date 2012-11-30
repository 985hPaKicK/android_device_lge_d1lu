#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8960 configs
$(call inherit-product, device/lge/msm8960-common/msm8960.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/d1lu/overlay

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/lge/d1lu/ramdisk/init.rc:root/init.rc \
    device/lge/d1lu/ramdisk/init.d1lu.rc:root/init.d1lu.rc \
    device/lge/d1lu/ramdisk/init.target.rc:root/init.target.rc \
    device/lge/d1lu/ramdisk/init.lge.early.rc:root/init.lge.early.rc \
    device/lge/d1lu/ramdisk/init.grand.rc:root/init.grand.rc \
    device/lge/d1lu/ramdisk/init.lge.usb.rc:root/init.lge.usb.rc \
    device/lge/d1lu/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/lge/d1lu/ramdisk/ueventd.rc:root/ueventd.rc \
    device/lge/d1lu/ramdisk/ueventd.grand.rc:root/ueventd.grand.rc \
    device/lge/d1lu/ramdisk/ueventd.d1lu.rc:root/ueventd.d1lu.rc

# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_AS:system/etc/gps.conf

# Media config
PRODUCT_COPY_FILES += \
    device/lge/msm8960-common/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/msm8960-common/configs/media_codecs.xml:system/etc/media_codecs.xml

# vold config
PRODUCT_COPY_FILES += \
    device/lge/d1lu/configs/vold.fstab:system/etc/vold.fstab

# wifi config
PRODUCT_COPY_FILES += \
    device/lge/d1lu/configs/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# thermald config
PRODUCT_COPY_FILES += \
    device/lge/d1lu/configs/thermald.conf:/system/etc/thermald.conf

# apn config
PRODUCT_COPY_FILES += \
    device/lge/d1lu/configs/apns-conf.xml:/system/etc/apns-conf.xml

# Sound configs
PRODUCT_COPY_FILES += \
    device/lge/d1lu/configs/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    device/lge/d1lu/dsp/snd_soc_msm/DL_REC:/system/etc/snd_soc_msm/DL_REC \
    device/lge/d1lu/dsp/snd_soc_msm/DL_REC_2x:/system/etc/snd_soc_msm/DL_REC_2x \
    device/lge/d1lu/dsp/snd_soc_msm/FM_A2DP_REC:/system/etc/snd_soc_msm/FM_A2DP_REC \
    device/lge/d1lu/dsp/snd_soc_msm/FM_A2DP_REC_2x:/system/etc/snd_soc_msm/FM_A2DP_REC_2x \
    device/lge/d1lu/dsp/snd_soc_msm/FM_Digital_Radio:/system/etc/snd_soc_msm/FM_Digital_Radio \
    device/lge/d1lu/dsp/snd_soc_msm/FM_Digital_Radio_2x:/system/etc/snd_soc_msm/FM_Digital_Radio_2x \
    device/lge/d1lu/dsp/snd_soc_msm/FM_REC:/system/etc/snd_soc_msm/FM_REC \
    device/lge/d1lu/dsp/snd_soc_msm/FM_REC_2x:/system/etc/snd_soc_msm/FM_REC_2x \
    device/lge/d1lu/dsp/snd_soc_msm/HiFi:/system/etc/snd_soc_msm/HiFi \
    device/lge/d1lu/dsp/snd_soc_msm/HiFi_2x:/system/etc/snd_soc_msm/HiFi_2x \
    device/lge/d1lu/dsp/snd_soc_msm/HiFi_Low_Power:/system/etc/snd_soc_msm/HiFi_Low_Power \
    device/lge/d1lu/dsp/snd_soc_msm/HiFi_Low_Power_2x:/system/etc/snd_soc_msm/HiFi_Low_Power_2x \
    device/lge/d1lu/dsp/snd_soc_msm/HiFi_Rec:/system/etc/snd_soc_msm/HiFi_Rec \
    device/lge/d1lu/dsp/snd_soc_msm/HiFi_Rec_2x:/system/etc/snd_soc_msm/HiFi_Rec_2x \
    device/lge/d1lu/dsp/snd_soc_msm/snd_soc_msm:/system/etc/snd_soc_msm/snd_soc_msm \
    device/lge/d1lu/dsp/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/lge/d1lu/dsp/snd_soc_msm/UL_DL_REC:/system/etc/snd_soc_msm/UL_DL_REC \
    device/lge/d1lu/dsp/snd_soc_msm/UL_DL_REC_2x:/system/etc/snd_soc_msm/UL_DL_REC_2x \
    device/lge/d1lu/dsp/snd_soc_msm/Voice_Call:/system/etc/snd_soc_msm/Voice_Call \
    device/lge/d1lu/dsp/snd_soc_msm/Voice_Call_2x:/system/etc/snd_soc_msm/Voice_Call_2x \
    device/lge/d1lu/dsp/snd_soc_msm/Voice_Call_IP:/system/etc/snd_soc_msm/Voice_Call_IP \
    device/lge/d1lu/dsp/snd_soc_msm/Voice_Call_IP_2x:/system/etc/snd_soc_msm/Voice_Call_IP_2x

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/lge/d1lu/keylayout/MHLRCP.kl:system/usr/keylayout/MHLRCP.kl \
    device/lge/d1lu/keylayout/d1lu-keypad.kl:system/usr/keylayout/d1lu-keypad.kl \
    device/lge/d1lu/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
    device/lge/d1lu/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/lge/d1lu/keylayout/osp-input.kl:system/usr/keylayout/osp-input.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/lge/d1lu/idc/keypad-8960.idc:system/usr/idc/keypad-8960.idc \
    device/lge/d1lu/idc/melfas-ts.idc:system/usr/idc/melfas-ts.idc \
    device/lge/d1lu/idc/osp-input.idc:system/usr/idc/osp-input.idc

# Camera
PRODUCT_PACKAGES += \
    libcameraservice

# GPS
#PRODUCT_PACKAGES += \
#    gps.d1lu \

# Torch
PRODUCT_PACKAGES += \
    Torch

# Kernel modules
PRODUCT_COPY_FILES += \
    device/lge/d1lu/modules/wlan.ko:/system/lib/modules/wlan.ko \
    device/lge/d1lu/modules/mwlan_aarp.ko:/system/lib/modules/mwlan_aarp.ko

# 2nd-init ramdisk
PRODUCT_COPY_FILES += \
    device/lge/d1lu/prebuilt/cm10.tar:/system/xbin/cm10.tar


# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += ko_KR xhdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/lge/d1lu/d1lu-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
