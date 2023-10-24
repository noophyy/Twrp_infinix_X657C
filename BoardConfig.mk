DEVICE_PATH := device/infinix/Max

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic

TARGET_USES_64_BIT_BINDER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := Max

# Bootloader"
TARGET_BOOTLOADER_BOARD_NAME := X657C_H6117

# Platform
TARGET_BOARD_PLATFORM := mt6761

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1 androidboot.selinux=permissive
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_BOOTIMG_HEADER_VERSION := 1
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x11b00000
BOARD_KERNEL_TAGS_OFFSET := 0x07880000
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_KERNEL_IMAGE_NAME := kernel
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/infinix/Max
TARGET_KERNEL_CONFIG := Max_defconfig

TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Partition
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 40894464
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26622279168
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USES_MKE2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM := system

# Dynamic Partition
BOARD_SUPER_PARTITION_SIZE := 9122611200
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_MAIN_SIZE := 9122611200
BOARD_MAIN_PARTITION_LIST := system vendor product

# System as root
BOARD_SUPPRESS_SECURE_ERASE := true

# Decryption
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_INCLUDE_METADATA_DECRYPT := true
BOARD_USES_FBE_DECRYPTION := true
TW_INCLUDE_CRYPTO_FBE := true

# # Hack: prevent anti roll back
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)

# Metadata
BOARD_USES_METADATA_PARTITION := true
BOARD_ROOT_EXTRA_FOLDERS += metadata

# Additional binaries & libraries needed for recovery
TARGET_RECOVERY_DEVICE_MODULES += \
    libkeymaster4 \
    libpuresoftkeymasterdevice \
    ashmemd_aidl_interface-cpp \
    libashmemd_client

TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/ashmemd_aidl_interface-cpp.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libashmemd_client.so

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

# ADDING LOG
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# TWRP Configuration
TW_THEME := portrait_hdpi
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_SDCARD_ON_DATA := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_SCREEN_BLANK := true
TW_USE_TOOLBOX := true
TW_HAS_MTP := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 2020
TW_DEFAULT_BRIGHTNESS := 1200
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone28/temp"
TW_FRAMERATE := 60
TW_STATUS_ICONS_ALIGN := center
TW_CUSTOM_CPU_POS := 50
TW_CUSTOM_CLOCK_POS := 300
TW_CUSTOM_BATTERY_POS := 800
TW_EXCLUDE_APEX := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en
TW_INCLUDE_NTFS_3G := true
TARGET_USES_MKE2FS := true
TW_EXCLUDE_TWRPAPP := true
TW_INCLUDE_FUSE_EXFAT := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_BACKUP_EXCLUSIONS := /data/fonts/files
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_LIBRESETPROP :=true
TW_INCLUDE_REPACKTOOLS := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.usb0/lun.%d/file

# Maintainer/Version
TW_DEVICE_VERSION := Miracle.
