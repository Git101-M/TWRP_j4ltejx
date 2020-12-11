# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_SOC := exynos7570
TARGET_BOOTLOADER_BOARD_NAME := universal7570
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

# Secondary Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Neon Optimization
ARCH_ARM_HAVE_NEON := true

# Binder
TARGET_USES_64_BIT_BINDER := true

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := true

# Kernel Source
# Uncomment for building from source
# TARGET_KERNEL_SOURCE := kernel/samsung/j4ltejx
# TARGET_KERNEL_CONFIG := j4lte_00_defconfig
# TARGET_TOOLCHAIN := prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/
# TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

# Prebuilt kernel
TARGET_PREBUILT_KERNEL := device/samsung/j4ltejx/Image
TARGET_PREBUILT_DTB := device/samsung/j4ltejx/dtb.img

# Image
BOARD_KERNEL_IMAGE_NAME := Image dtb.img
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/samsung/j4ltejx/dtb.img --board SRPRB21A008RU # --dt $(OUT_DIR)/target/product/j4ltejx/obj/KERNEL_OBJ/arch/$(TARGET_ARCH)/boot/dtb.img

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# TWRP Flags
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true

# Display
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 150

# Reboot option
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true

# RIL
TW_INCLUDE_NTFS_3G := true

# Partition option
TW_NO_EXFAT_FUSE := true

# Set to english as default language
TW_DEFAULT_LANGUAGE := en

TW_USE_NEW_MINADBD := true

# Decryption (maybe)
TW_INCLUDE_FBE := true

# SD Card Things
# BOARD_HAS_NO_REAL_SDCARD := true

RECOVERY_GRAPHICS_USE_LINELENGTH := true

# Fstab
TARGET_RECOVERY_FSTAB := device/samsung/j4ltejx/recovery.fstab

# Logging
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# System as root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_OTA_ASSERT_DEVICE := j4lte,j4ltejx,j4lteub

# Adjustment
TW_EXCLUDE_SUPERSU := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

# Use busybox
TW_USE_TOOLBOX := false
TW_INCLUDE_BUSYBOX := true

#
# SkyHawk Recovery Project (SHRP)
#

# Path of your SHRP Tree
SHRP_PATH := device/samsung/j4lte
# Maintainer name *
SHRP_MAINTAINER := NamaSayaHendra
# Device codename *
SHRP_DEVICE_CODE := j4lte
# Recovery Type (It can be treble,normal,SAR) [Only for About Section] *
SHRP_REC_TYPE := Treble
# Recovery Type (It can be A/B or A_only) [Only for About Section] *
SHRP_DEVICE_TYPE := A_Only
SHRP_EDL_MODE := 0
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
SHRP_FLASH := 0
SHRP_REC := /dev/block/platform/13540000.dwmmc0/by-name/RECOVERY
SHRP_NO_SAR_AUTOMOUNT := true
# SHRP Express, enables on-the-fly theme patching (also persistent) + persistent lock [Optional]
SHRP_EXPRESS := true
# SHRP Dark mode, use this flag to have dark theme set by default [Optional]
SHRP_DARK := true
