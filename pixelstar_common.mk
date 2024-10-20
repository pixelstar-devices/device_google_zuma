#
# Copyright (C) 2023 The LineageOS Project
# Copyright (C) 2024 Project-PixelStar
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/zuma/overlay-pixelstar

# AiAi Config
PRODUCT_COPY_FILES += \
    device/google/zuma/allowlist_com.google.android.as.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/allowlist_com.google.android.as.xml

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# EUICC
ifneq ($(BOARD_WITHOUT_RADIO),true)
# product permissions XML from stock
PRODUCT_COPY_FILES += \
    device/google/zuma/product-permissions-stock.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/product-permissions-stock.xml
endif

# GMS
GMS_MAKEFILE=gms_64bit_only.mk
TARGET_SUPPORTS_64_BIT_APPS := true

# Google Assistant
PRODUCT_PRODUCT_PROPERTIES += ro.opa.eligible_device=true

# Lineage Health
include hardware/google/pixel/lineage_health/device.mk

# Linker config
PRODUCT_VENDOR_LINKER_CONFIG_FRAGMENTS += \
    device/google/zuma/linker.config.json

# Parts
PRODUCT_PACKAGES += \
    GoogleParts
    
# Scudo
PRODUCT_USE_SCUDO := true

# Touch
include hardware/google/pixel/touch/device.mk
