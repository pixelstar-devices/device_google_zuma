# Fingerprint
include device/google/zuma/fingerprint/fpc1540/fingerprint_config.mk

PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.fpc \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml
