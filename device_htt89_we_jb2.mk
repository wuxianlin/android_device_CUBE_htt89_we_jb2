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

# recovery
PRODUCT_COPY_FILES += \
    device/CUBE/htt89_we_jb2/ram_header:ram_header \

PRODUCT_COPY_FILES += \
    device/CUBE/htt89_we_jb2/recovery/advanced_meta_init.rc:recovery/root/advanced_meta_init.rc \
    device/CUBE/htt89_we_jb2/recovery/factory_init.project.rc:recovery/root/factory_init.project.rc \
    device/CUBE/htt89_we_jb2/recovery/factory_init.rc:recovery/root/factory_init.rc \
    device/CUBE/htt89_we_jb2/recovery/fstab:recovery/root/fstab \
    device/CUBE/htt89_we_jb2/recovery/meta_init.modem.rc:recovery/root/meta_init.modem.rc \
    device/CUBE/htt89_we_jb2/recovery/meta_init.project.rc:recovery/root/meta_init.project.rc \
    device/CUBE/htt89_we_jb2/recovery/meta_init.rc:recovery/root/meta_init.rc \
    device/CUBE/htt89_we_jb2/recovery/sec.ko:recovery/root/sec.ko \
    device/CUBE/htt89_we_jb2/recovery/ueventd.goldfish.rc:recovery/root/ueventd.goldfish.rc \
    device/CUBE/htt89_we_jb2/recovery/ueventd.rc:recovery/root/ueventd.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_htt89_we_jb2
PRODUCT_DEVICE := htt89_we_jb2
