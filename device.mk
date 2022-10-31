#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

# API levels
PRODUCT_SHIPPING_API_LEVEL := 26

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@5.0-impl:32 \
    android.hardware.audio.effect@5.0-impl:32 \
    android.hardware.audio.service \
    android.hardware.soundtrigger@2.1-impl:32

# Audio HW module
    audio.r_submix.default \
    audio.usb.default \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libtinycompress \
    libvolumelistener \
    tinymix

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.5-service_64

# Configstore
PRODUCT_PACKAGES += \
    disable_configstore

# Context Hub
PRODUCT_PACKAGES += \
    android.hardware.contexthub@1.0-impl.generic \
    android.hardware.contexthub@1.0-service

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.3-service \
    android.hardware.graphics.mapper@2.0-impl-qti-display \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service

PRODUCT_PACKAGES += \
    gralloc.sdm845 \
    hwcomposer.sdm845 \
    memtrack.sdm845

PRODUCT_PACKAGES += \
    libdisplayconfig.qti \
    libdisplayconfig.system.qti \
    libqdMetaData \
    libqdMetaData.system \
    libtinyxml

PRODUCT_PACKAGES += \
    vendor.display.config@1.0.vendor \
    vendor.display.config@2.0 \
    vendor.qti.hardware.display.allocator@1.0-service

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.3.vendor \
    android.hardware.drm-service.clearkey

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service.samsung \

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0-impl:64

# GNSS
PRODUCT_PACKAGES += \
    android.hardware.gnss@2.0.vendor

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-service

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.allocator@1.0.vendor \
    android.hidl.base@1.0 \
    android.hidl.base@1.0.vendor \
    android.hidl.memory@1.0.vendor \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor

# IPACM
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# Media
PRODUCT_PACKAGES += \
    android.hardware.media.omx@1.0-impl \
    android.hardware.media.omx@1.0-service

PRODUCT_PACKAGES += \
    libavservices_minijail

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxG711Enc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml

# QTI
PRODUCT_PACKAGES += \
    libqti_vndfwk_detect.vendor

# Radio
PRODUCT_PACKAGES += \
    android.hardware.radio@1.4.vendor \
    android.hardware.radio.config@1.2.vendor \
    android.hardware.radio.deprecated@1.0.vendor \
    libjson \
    librmnetctl

# Rootdir
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.sh \
    init.qcom.usb.sh

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.starqlte.rc \
    init.samsung.display.rc \
    init.samsung.rc \
    init.target.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \
    hardware/samsung

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb-service.samsung
