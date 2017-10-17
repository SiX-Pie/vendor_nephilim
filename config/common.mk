PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Disable excessive dalvik debug messages
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0

# SiX-specific init file
PRODUCT_COPY_FILES += \
    vendor/gzosp/prebuilt/common/etc/init.local.rc:root/init.six.rc

# Allow tethering without provisioning app
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# S.i.X property overides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.bg_apps_limit=20 \
    wifi.supplicant_scan_interval=180 \
    windowsmgr.max_events_per_sec=150 \
    debug.performance.tuning=1 \
    ro.ril.power_collapse=1 \
    persist.service.lgospd.enable=0 \
    persist.service.pcsync.enable=0 \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    persist.sys.dun.override=0 \
    ro.substratum.verified=true \
    ro.adb.secure=1 \
    ro.camcorder.videoModes=true \
    ro.media.enc.jpeg.quality=100 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.hprof.vid.bps=8000000
    ro.media.capture.maxres=8m \
    ro.media.panorama.defres=3264×1840 \
    ro.media.panorama.frameres=1280×720 \
    ro.media.enc.hprof.vid.fps=65 \
    pm.sleep_mode=1 \
    video.accelerate.hw=1 \
    debug.composition.type=gpu \
    profiler.force_disable_err_rpt=1 \
    profiler.force_disable_ulog=1 \
    net.tcp.buffersize.default=4096,87380,256960, 4096, 16384,256960 \
    net.tcp.buffersize.wifi=4096,87380,256960,409 6,163 84,256960 \
    net.tcp.buffersize.umts=4096,8 7380,256960,4096,163 84,256960 \
    net.tcp.buffersize.gprs=4096,8 7380,256960,4096,163 84,256960 \
    net.tcp.buffersize.edge=4096,8 7380,256960,4096,163 84,256960 \
    persist.telephony.support.ipv6=1 \
    persist.telephony.support.ipv4=1 \
    ro.telephony.call_ring.delay=0 \
    ring.delay=0 \
    ro.kernel.android.checkjni=0 \
    ro.kernel.checkjni=0 \
    ro.config.nocheckin=1 \
    drm.service.enabled=true

# Set Pixel blue light theme on Gboard
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.ime.theme_id=5

# Viper4Rise 
PRODUCT_COPY_FILES += \
    vendor/gzosp/prebuilt/common/lib/libauaudioutils.so:system/lib/libauaudioutils.so \
    vendor/gzosp/prebuilt/common/lib/libaudsd2pcm.so:system/lib/libaudsd2pcm.so \
    vendor/gzosp/prebuilt/common/lib/libldacBT_enc.so:system/lib/libldacBT_enc.so \
    vendor/gzosp/prebuilt/common/lib/libsrsprocessing.so:system/lib/libsrsprocessing.so \
    vendor/gzosp/prebuilt/common/lib/libgnmc_decoder.1.1.8.so:system/lib/libgnmc_decoder.1.1.8.so \
    vendor/gzosp/prebuilt/common/lib/libausndfile.so:system/lib/libausndfile.so \
    vendor/gzosp/prebuilt/common/lib/libausoxr.so:system/lib/libausoxr.so \
    vendor/gzosp/prebuilt/common/lib/libauusb.so:system/lib/libauusb.so \
    vendor/gzosp/prebuilt/common/lib/libauogg.so:system/lib/libauogg.so \
    vendor/gzosp/prebuilt/common/lib/libgnsdk_dsp.3.09.0.so:system/lib/libgnsdk_dsp.3.09.0.so \
    vendor/gzosp/prebuilt/common/lib/libautaglib.so:system/lib/libautaglib.so \
    vendor/gzosp/prebuilt/common/lib/libmaxxeffectwrapper.so:system/lib/libmaxxeffectwrapper.so \
    vendor/gzosp/prebuilt/common/lib/libV4AJniUtils.so:system/lib/libV4AJniUtils.so \
    vendor/gzosp/prebuilt/common/lib/libMAM2-processcode-Coretex_A9.so:system/lib/libMAM2-processcode-Coretex_A9.so \
    vendor/gzosp/prebuilt/common/lib/libMAM2-wavesfx-Coretex_A9.so:system/lib/libMAM2-wavesfx-Coretex_A9.so \
    vendor/gzosp/prebuilt/common/lib/libosl-maxxaudio-itf.so:system/lib/libosl-maxxaudio-itf.so \
    vendor/gzosp/prebuilt/common/lib/libauvorbis.so:system/lib/libauvorbis.so \
    vendor/gzosp/prebuilt/common/lib/libgnustl_shared.so:system/lib/libgnustl_shared.so \
    vendor/gzosp/prebuilt/common/lib/libradsone-shared.so:system/lib/libradsone-shared.so \
    vendor/gzosp/prebuilt/common/lib/libambisonic_audio_renderer.so:system/lib/libambisonic_audio_renderer.so \
    vendor/gzosp/prebuilt/common/lib/libswresample-2.so:system/lib/libswresample-2.so \
    vendor/gzosp/prebuilt/common/lib/libaemagic.so:system/lib/libaemagic.so \
    vendor/gzosp/prebuilt/common/lib/soundfx/libeffectproxy.so:system/lib/soundfx/libeffectproxy.so \
    vendor/gzosp/prebuilt/common/lib/soundfx/libmaxxeffect-cembedded.so:system/lib/soundfx/libmaxxeffect-cembedded.so \
    vendor/gzosp/prebuilt/common/lib/soundfx/libqcompostprocbundle.so:system/lib/soundfx/libqcompostprocbundle.so \
    vendor/gzosp/prebuilt/common/lib/soundfx/libsonypostprocbundle.so:system/lib/soundfx/libsonypostprocbundle.so \
    vendor/gzosp/prebuilt/common/lib/soundfx/libsonysweffect.so:system/lib/soundfx/libsonysweffect.so \
    vendor/gzosp/prebuilt/common/lib/soundfx/libv4a_fx_ics.so:system/lib/soundfx/libv4a_fx_ics.so \
    vendor/gzosp/prebuilt/common/lib/soundfx/libvisualizer.so:system/lib/soundfx/libvisualizer.so

# Backup services whitelist
PRODUCT_COPY_FILES += \
    vendor/gzosp/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/gzosp/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# Gzosp-specific init file
PRODUCT_COPY_FILES += \
    vendor/gzosp/prebuilt/common/etc/init.local.rc:root/init.gzosp.rc

# Copy LatinIME for gesture typing
PRODUCT_COPY_FILES += \
    vendor/gzosp/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/gzosp/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/gzosp/prebuilt/common/etc/mkshrc:system/etc/mkshrc \
    vendor/gzosp/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf

# Fix Dialer
PRODUCT_COPY_FILES +=  \
    vendor/gzosp/prebuilt/common/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

# Gzosp-specific startup services
PRODUCT_COPY_FILES += \
    vendor/gzosp/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/gzosp/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/gzosp/prebuilt/common/bin/sysinit:system/bin/sysinit

# Required packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    su

# Optional packages
PRODUCT_PACKAGES += \
    LiveWallpapersPicker


# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# AudioFX
PRODUCT_PACKAGES += \
    AudioFX

# Extra Optional packages
PRODUCT_PACKAGES += \
    Gallery2 \
    Camera2 \
    Eleven \
    Launcher3 \
    LatinIME \
    BluetoothExt \
    Eleven \
    PrebuiltDeskClockGoogle \
    WallpaperPickerGooglePrebuilt \
    CalendarGooglePrebuilt \
    Chrome \
    Substratum \
    OmniSwitch

# Overlay Packages
PRODUCT_PACKAGES += \
    PixelOverlay \
    NexusOverlay \
    RedOverlay

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# MusicFX advanced effects
#ifneq ($(TARGET_NO_DSPMANAGER), true)
#PRODUCT_PACKAGES += \
#    libcyanogen-dsp \
#    audio_effects.conf
#endif

# Custom off-mode charger
#ifneq ($(WITH_CM_CHARGER),false)
#PRODUCT_PACKAGES += \
#    charger_res_images \
#    cm_charger_res_images \
#    font_log.png \
#    libhealthd.cm
#endif

# DU Utils library
#PRODUCT_BOOT_JARS += \
#    org.dirtyunicorns.utils

# DU Utils library
#PRODUCT_PACKAGES += \
#    org.dirtyunicorns.utils

#ifeq ($(DEFAULT_ROOT_METHOD),magisk)
# Magisk Manager
#PRODUCT_PACKAGES += \
#    MagiskManager

# Magisk
#PRODUCT_COPY_FILES += \
#   vendor/gzosp/prebuilt/common/addon.d/magisk.zip:system/addon.d/magisk.zip
#endif

#ifeq ($(DEFAULT_ROOT_METHOD),supersu)
# SuperSU
#PRODUCT_COPY_FILES += \
#   vendor/gzosp/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
#   vendor/gzosp/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon
#endif

# Explict rootless defined, or none of the root methods defined,
# default rootless : nothing todo
#ifeq ($(DEFAULT_ROOT_METHOD),rootless)
#endif

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# Storage manager
PRODUCT_PROPERTY_OVERRIDES += \
    ro.storage_manager.enabled=true

# easy way to extend to add more packages
-include vendor/extra/product.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/gzosp/overlay/common

$(call inherit-product-if-exists, vendor/gzosp/prebuilt/common/prebuilt.mk)

# Boot animation include
ifneq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))

# determine the smaller dimension
TARGET_BOOTANIMATION_SIZE := $(shell \
  if [ $(TARGET_SCREEN_WIDTH) -lt $(TARGET_SCREEN_HEIGHT) ]; then \
    echo $(TARGET_SCREEN_WIDTH); \
  else \
    echo $(TARGET_SCREEN_HEIGHT); \
  fi )

# get a sorted list of the sizes
bootanimation_sizes := $(subst .zip,, $(shell ls vendor/gzosp/prebuilt/common/bootanimation))
bootanimation_sizes := $(shell echo -e $(subst $(space),'\n',$(bootanimation_sizes)) | sort -rn)

# find the appropriate size and set
define check_and_set_bootanimation
$(eval TARGET_BOOTANIMATION_NAME := $(shell \
  if [ -z "$(TARGET_BOOTANIMATION_NAME)" ]; then
    if [ $(1) -le $(TARGET_BOOTANIMATION_SIZE) ]; then \
      echo $(1); \
      exit 0; \
    fi;
  fi;
  echo $(TARGET_BOOTANIMATION_NAME); ))
endef
$(foreach size,$(bootanimation_sizes), $(call check_and_set_bootanimation,$(size)))

ifeq ($(TARGET_BOOTANIMATION_HALF_RES),true)
PRODUCT_COPY_FILES += \
    vendor/gzosp/prebuilt/common/bootanimation/halfres/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
else
PRODUCT_COPY_FILES += \
    vendor/gzosp/prebuilt/common/bootanimation/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
endif
endif

# Versioning System
# gzosp first version.
PRODUCT_VERSION_MAJOR = 8.0
PRODUCT_VERSION_MINOR = OPR5
PRODUCT_VERSION_MAINTENANCE = v2.0
GZOSP_POSTFIX := -$(shell date +"%Y%m%d")
ifdef GZOSP_BUILD_EXTRA
    GZOSP_POSTFIX := -$(GZOSP_BUILD_EXTRA)
endif

ifndef R3Ds_BUILD_TYPE
    R3Ds_BUILD_TYPE := R3Ds
endif

ifndef GZOSP_BUILD_TYPE
    GZOSP_BUILD_TYPE := UNOFFICIAL
endif

# Set all versions
SIX_VERSION := sixrom_$(GZOSP_BUILD)-$(PRODUCT_VERSION_MAJOR)$(GZOSP_POSTFIX)-$(PRODUCT_VERSION_MINOR)-$(PRODUCT_VERSION_MAINTENANCE)-$(R3Ds_BUILD_TYPE)
GZOSP_MOD_VERSION := sixrom_$(GZOSP_BUILD)-$(PRODUCT_VERSION_MAJOR)$(GZOSP_POSTFIX)-$(PRODUCT_VERSION_MINOR)-$(PRODUCT_VERSION_MAINTENANCE)-$(R3Ds_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(R3Ds_BUILD_TYPE) \
    six.ota.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
    ro.six.version=$(SIX_VERSION) \
    ro.modversion=$(SIX_VERSION)

EXTENDED_POST_PROCESS_PROPS := vendor/gzosp/tools/gzosp_process_props.py

