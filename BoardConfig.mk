# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

BOARD_VENDOR := samsung

TARGET_SPECIFIC_HEADER_PATH := device/samsung/skyrocket/include

# Architecture
BOARD_USES_LEGACY_MMAP := true
MALLOC_IMPL := dlmalloc
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := msm8660
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := scorpion

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8660_SURF

# Kernel
BOARD_KERNEL_BASE := 0x40400000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom usb_id_pin_rework=true no_console_suspend=true androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01400000
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.7/bin
TARGET_KERNEL_SOURCE := kernel/samsung/sultan-celox
TARGET_KERNEL_CONFIG := Sultan_skyrocket_defconfig

# Audio
BOARD_HAVE_SAMSUNG_AUDIO := true
BOARD_QCOM_TUNNEL_LPA_ENABLED := false
BOARD_QCOM_VOIP_ENABLED := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_GLOBAL_CFLAGS := $(filter-out -DQCOM_DIRECTTRACK,$(TARGET_GLOBAL_CFLAGS))
TARGET_GLOBAL_CPPFLAGS := $(filter-out -DQCOM_DIRECTTRACK,$(TARGET_GLOBAL_CPPFLAGS))
CLANG_TARGET_GLOBAL_CFLAGS := $(filter-out -DQCOM_DIRECTTRACK,$(CLANG_TARGET_GLOBAL_CFLAGS))
CLANG_TARGET_GLOBAL_CPPFLAGS := $(filter-out -DQCOM_DIRECTTRACK,$(CLANG_TARGET_GLOBAL_CPPFLAGS))

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/skyrocket/bluetooth/vnd_msm8660.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/skyrocket/bluetooth

# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := false
TARGET_BOOTANIMATION_USE_RGB565 := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP_CAMERA_ABI_HACK

# Charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_SHOW_PERCENTAGE := true

# CMHW
BOARD_HARDWARE_CLASS += hardware/samsung/cmhw

# Dex-preopt
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif
DONT_DEXPREOPT_PREBUILTS := true

# Display
BOARD_EGL_CFG := device/samsung/skyrocket/configs/egl.cfg
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_DISPLAY_INSECURE_MM_HEAP := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_RELEASE_CPPFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.qcom

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Logging
TARGET_USES_LOGD := false

# Media
TARGET_NO_ADAPTIVE_PLAYBACK := true

# Package assert
TARGET_OTA_ASSERT_DEVICE := SGH-I727,skyrocket

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_CACHEIMAGE_PARTITION_SIZE := 627048448
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2149580800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12087984128
TARGET_USERIMAGES_USE_EXT4 := true

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Recovery
# TARGET_RECOVERY_FSTAB := device/samsung/skyrocket/ramdisk/twrp.fstab
TARGET_RECOVERY_FSTAB := device/samsung/skyrocket/ramdisk/fstab.qcom

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/skyrocket/ril

# TWRP
DEVICE_RESOLUTION := 480x800
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXTERNAL_STORAGE_PATH := "/external_sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sdcard"
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXCLUDE_SUPERSU := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_SCREEN_TIMEOUT := true

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Wifi
BOARD_HAVE_SAMSUNG_WIFI := true
BOARD_NO_WIFI_HAL := true
BOARD_WLAN_DEVICE := bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_${BOARD_WLAN_DEVICE}
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_${BOARD_WLAN_DEVICE}
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_BAND := 802_11_ABG
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/etc/wifi/bcmdhd_p2p.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME     := "dhd"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG   := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
