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

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/lge/d1lu/configs/init.lge_dut.bt.sh:/system/etc/init.lge_dut.bt.sh \
    device/lge/d1lu/configs/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/lge/d1lu/configs/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
    device/lge/d1lu/configs/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    device/lge/d1lu/configs/init.qcom.ftm_module.sh:/system/etc/init.qcom.ftm_module.sh \
    device/lge/d1lu/configs/init.qcom.ftm_module_out.sh:/system/etc/init.qcom.ftm_module_out.sh \
    device/lge/d1lu/configs/init.qcom.mdm_links.sh:/system/etc/init.qcom.mdm_links.sh \
    device/lge/d1lu/configs/init.qcom.modem_links.sh:/system/etc/init.qcom.modem_links.sh \
    device/lge/d1lu/configs/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    device/lge/d1lu/configs/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/lge/d1lu/configs/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh \
    device/lge/d1lu/configs/init.wlan-on-off.sh:/system/etc/init.wlan-on-off.sh

# MSM8960 firmware
PRODUCT_COPY_FILES += \
    device/lge/d1lu/firmware/cyttsp_8960_cdp.hex:/system/etc/firmware/cyttsp_8960_cdp.hex \
    device/lge/d1lu/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw

# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_AS:system/etc/gps.conf

# Media config
PRODUCT_COPY_FILES += \
    device/lge/d1lu/configs/media_profiles.xml:system/etc/media_profiles.xml

# vold config
PRODUCT_COPY_FILES += \
    device/lge/d1lu/configs/vold.fstab:system/etc/vold.fstab

# thermald config
PRODUCT_COPY_FILES += \
    device/lge/d1lu/configs/thermald.conf:/system/etc/thermald.conf

# snd_soc_msm
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

# Sound effects
PRODUCT_COPY_FILES += \
    device/lge/d1lu/configs/audio_effects.conf:system/etc/audio_effects.conf

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

# Wifi firmware
PRODUCT_COPY_FILES += \
    device/lge/d1lu/firmware/WCNSS_cfg.dat:/system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/lge/d1lu/firmware/WCNSS_qcom_cfg.ini:/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    device/lge/d1lu/firmware/WCNSS_qcom_wlan_nv.bin:/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Wifi config
PRODUCT_COPY_FILES += \
    device/lge/d1lu/configs/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# Video (Temp)
PRODUCT_COPY_FILES += \
    device/lge/d1lu/prebuilt/libOmxVdec.so:/obj/lib/libOmxVdec.so \
    device/lge/d1lu/prebuilt/libOmxVdec.so:/system/lib/libOmxVdec.so

# NFCEE access control
PRODUCT_COPY_FILES += \
    device/lge/d1lu/configs/nfcee_access.xml:system/etc/nfcee_access.xml

# Camera
PRODUCT_PACKAGES += \
    libcameraservice

# GPS
#PRODUCT_PACKAGES += \
#    gps.d1lu \

# Torch
PRODUCT_PACKAGES += \
    Torch

# hostapd
PRODUCT_PACKAGES += \
    hostapd

# Kernel modules
PRODUCT_COPY_FILES += \
    device/lge/d1lu/modules/wlan.ko:/system/lib/modules/wlan.ko \
    device/lge/d1lu/modules/mwlan_aarp.ko:/system/lib/modules/mwlan_aarp.ko

# 2nd-init
PRODUCT_COPY_FILES += \
    device/lge/d1lu/2nd-init/recovery.tar:/system/xbin/recovery.tar \
    device/lge/d1lu/2nd-init/cm10.tar:/system/xbin/cm10.tar

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
