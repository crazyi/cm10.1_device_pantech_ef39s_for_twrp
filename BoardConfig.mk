#USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/pantech/ef39s/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

BOARD_USES_ADRENO_200 := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := ef39s

#for 2.3-4.0
#BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom loglevel=0
#for 4.1
BOARD_KERNEL_CMDLINE := console=NULL,115200,n8 androidboot.hardware=qcom kgsl.mmutype=gpummu vmalloc=400M loglevel=0
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE 	:= 2048
#BOARD_FORCE_RAMDISK_ADDRESS has been deprecated
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01300000

#Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pantech/ef39s/bluetooth

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
#800M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x32000000
#2G 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x80000000 
BOARD_FLASH_BLOCK_SIZE := 131072


TARGET_PREBUILT_KERNEL := device/pantech/ef39s/kernel


#recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
# Use this flag if the board has a ext4 partition larger than 2gb
# BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_15x24.h\"
TARGET_RECOVERY_INITRC := device/pantech/ef39s/init.rc
TARGET_RECOVERY_FSTAB := device/pantech/ef39s/recovery.fstab

# Suppress the WIPE command since it can brick our EMMC
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_VOLD_MAX_PARTITIONS := 27
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

DEVICE_RESOLUTION := 800x1280
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_FLASH_FROM_STORAGE := true
TW_HAS_REBOOT_BOOTLOADER := true

#fixes slanty looking graphics on some devices
RECOVERY_GRAPHICS_USE_LINELENGTH :=true
TW_INCLUDE_JB_CRYPTO := true

TW_BRIGHTNESS_PATH := "/sys/devices/platform/msm_fb.524545/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 28
SP1_NAME := "info"
SP1_BACKUP_METHOD := image
SP1_MOUNTABLE := 0

TW_TOUCH_VIBRATOR := true

#Custom_Battery
#TW_CUSTOM_BATTERY_PATH := "/sys/class/power_supply/batterys"

#enables touch event logging to help debug touchscreen issues (don't leave this on for a release - it will fill up your logfile very quickly)
#TWRP_EVENT_LOGGING := true
HAVE_SELINUX := false

#RECOVERY_TOUCHSCREEN_SWAP_XY := true
#RECOVERY_TOUCHSCREEN_FLIP_X := true
#RECOVERY_TOUCHSCREEN_FLIP_Y := true
