TARGET_SPECIFIC_HEADER_PATH := device/samsung/golden/include
TARGET_OTA_ASSERT_DEVICE := golden,i8190,GT-I8190

# Platform 
TARGET_BOARD_PLATFORM := montblanc
TARGET_BOOTLOADER_BOARD_NAME := DB8520H
TARGET_SOC := u8500
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5064622080
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p19

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/golden
TARGET_KERNEL_CONFIG := golden_defconfig
BOARD_KERNEL_CMDLINE := root=/dev/ram0 init=init rw console=ttyAMA2,115200n8 mem=256M initrd=0x800000,72M
TARGET_USE_ST_ERICSSON_KERNEL := true
BOARD_KERNEL_BASE := 0x00000000
BOARD_RECOVERY_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FORCE_RAMDISK_ADDRESS := 0x02000000

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/golden/prebuilt/system/lib/egl/egl.cfg

# Camera
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_HARDWARE

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
USE_BLUETOOTH_SAP := true

# Wifi
BOARD_WLAN_DEVICE := bcm4334
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH     := "/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/bcmdhd_sta.bin_b2"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/bcmdhd_apsta.bin_b2"
WIFI_DRIVER_MODULE_NAME     :=  "dhd"
WIFI_DRIVER_MODULE_ARG      :=  "firmware_path=/system/etc/wifi/bcmdhd_sta.bin_b2 nvram_path=/system/etc/wifi/nvram_net.txt"


# Audio
BOARD_USES_ALSA_AUDIO := true

# USB Mounting
BOARD_UMS_LUNFILE := "/sys/devices/platform/musb-ux500.0/musb-hdrc/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/musb-ux500.0/musb-hdrc/gadget/lun0/file"

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_INITRC = device/samsung/golden/recovery/recovery.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/golden/recovery/graphics.c
BOARD_HAS_NO_MISC_PARTITION := true
