$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/CUBE/htt89_we_jb2/htt89_we_jb2-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/CUBE/htt89_we_jb2/overlay

LOCAL_PATH := device/CUBE/htt89_we_jb2
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_htt89_we_jb2
PRODUCT_DEVICE := htt89_we_jb2
