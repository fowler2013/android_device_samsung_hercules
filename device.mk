#
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
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/skyrocket/overlay

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.msm8660 \
    libaudio-resampler \
    libaudioutils

PRODUCT_COPY_FILES += \
    device/samsung/skyrocket/configs/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false

# Bluetooth
PRODUCT_COPY_FILES += \
    device/samsung/skyrocket/firmware/bcm4330B1.hcd:system/etc/firmware/bcm4330B1.hcd

# Camera
PRODUCT_PACKAGES += \
    camera.msm8660

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images

# Display
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libgenlock \
    lights.msm8660

PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.hw=1 \
    debug.hwc.dynThreshold=1.9 \
    debug.mdpcomp.logs=0 \
    debug.mdpcomp.maxlayer=3 \
    debug.sf.hw=1 \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=240

# GPS
PRODUCT_PACKAGES += \
    gps.msm8660

PRODUCT_COPY_FILES += \
    device/samsung/skyrocket/gps/gps.conf:system/etc/gps.conf

# Hardware permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# Key layouts
PRODUCT_COPY_FILES += \
    device/samsung/skyrocket/keylayout/8660_handset.kl:system/usr/keylayout/8660_handset.kl\
    device/samsung/skyrocket/keylayout/ffa-keypad.kl:system/usr/keylayout/ffa-keypad.kl \
    device/samsung/skyrocket/keylayout/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \
    device/samsung/skyrocket/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    device/samsung/skyrocket/keylayout/Vendor_04e8_Product_7021.kl:system/usr/keylayout/Vendor_04e8_Product_7021.kl

# Media
PRODUCT_COPY_FILES += \
    device/samsung/skyrocket/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/skyrocket/configs/media_profiles.xml:system/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Modem/EFS scripts
PRODUCT_COPY_FILES += \
    device/samsung/skyrocket/configs/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    device/samsung/skyrocket/configs/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
    device/samsung/skyrocket/configs/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh

# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag

# Net
PRODUCT_PACKAGES += \
    libnetcmdiface

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data_netmgrd_nint=16 \
    persist.radio.adb_log_on=1 \
    persist.radio.add_power_save=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.data_no_toggle=1

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3=""

# Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/skyrocket/ramdisk/fstab.qcom:root/fstab.qcom \
    device/samsung/skyrocket/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/samsung/skyrocket/ramdisk/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    device/samsung/skyrocket/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/samsung/skyrocket/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc

# System properties (misc.)
# persist.sys.lazy.dexopt=true (fw/base)
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    ro.enable.chromecast.mirror=true \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# Telephony
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=0 \
    ro.telephony.ril_class=SamsungMSM8660RIL \
    telephony.lteOnGsmDevice=1

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=1 \
    persist.sys.ums=true \
    persist.sys.usb.config=mtp,adb

# Use high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/samsung/skyrocket/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/samsung/skyrocket/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# Qcom HALs
$(call project-set-path,qcom-audio,device/samsung/skyrocket/audio)
$(call project-set-path,qcom-display,device/samsung/skyrocket/display)
$(call project-set-path,qcom-media,device/samsung/skyrocket/media)

# Dalvik-cache config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
