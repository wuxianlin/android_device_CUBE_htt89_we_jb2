USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/CUBE/htt89_we_jb2/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6589
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := mt6589_phone_720pv2

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00600000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00a00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x28a00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x40000000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/CUBE/htt89_we_jb2/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

# Recovery
RECOVERY_NAME := CUBE Talk 5H CWM Recovery
TARGET_RECOVERY_FSTAB := device/CUBE/htt89_we_jb2/recovery/recovery.fstab
TARGET_RECOVERY_INITRC := device/CUBE/htt89_we_jb2/recovery/init.rc
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/CUBE/htt89_we_jb2/recovery/recovery_keys.c
CWM_EMMC_BOOT_DEVICE_NAME := /dev/bootimg
CWM_EMMC_BOOT_DEVICE_SIZE := 0x00600000
CWM_EMMC_RECOVERY_DEVICE_NAME := /dev/recovery
CWM_EMMC_RECOVERY_DEVICE_SIZE := 0x00a00000
CWM_EMMC_UBOOT_DEVICE_NAME := /dev/uboot
CWM_EMMC_UBOOT_DEVICE_SIZE := 0x00060000
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file

# EXT4
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_MMCUTILS := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"fontcn30_17x43.h\"
TARGET_RECOVERY_PIXEL_FORMAT := \"RGBX_8888\"
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280
DEVICE_RESOLUTION := 720x1280

BOARD_CUSTOM_BOOTIMG_MK := device/CUBE/htt89_we_jb2/custombootimg.mk

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    persist.mtk.aee.aed=on \
    ro.debuggable=1 \
    persist.sys.usb.config=mass_storage \
    persist.service.acm.enable=0 \
    ro.mount.fs=EXT4
