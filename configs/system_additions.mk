# Copyright (C) 2016 The Pure Nexus Project
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

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/six/prebuilt/bin/sysinit:system/bin/sysinit \
    vendor/six/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner

# Six-specific init file
PRODUCT_COPY_FILES += \
    vendor/six/prebuilt/etc/init.six.rc:root/init.six.rc

# Backup Tool
#PRODUCT_COPY_FILES += \
#    vendor/six/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
#    vendor/six/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
#    vendor/six/prebuilt/bin/50-base.sh:system/addon.d/50-base.sh \

# Security Enhanced Linux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Set Pixel blue light theme on Gboard
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.ime.theme_id=5

# Unlimited Google Photos HQ upload
PRODUCT_COPY_FILES += \
   vendor/six/prebuilt/etc/sysconfig/nexus.xml:system/etc/sysconfig/nexus.xml

# World APN list
PRODUCT_COPY_FILES += \
    vendor/six/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# World SPN overrides list
PRODUCT_COPY_FILES += \
    vendor/six/prebuilt/etc/spn-conf.xml:system/etc/spn-conf.xml

# Selective SPN list for operator number who has the problem.
PRODUCT_COPY_FILES += \
    vendor/six/prebuilt/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml

# Fix Dialer
PRODUCT_COPY_FILES +=  \
    vendor/six/prebuilt/etc/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml 

# Don't compile SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

# DU Utils Library
#PRODUCT_BOOT_JARS += \
#    org.dirtyunicorns.utils

# DU Utils Library
#PRODUCT_PACKAGES += \
#    org.dirtyunicorns.utils

# MusicFX advanced effects
#ifneq ($(TARGET_NO_DSPMANAGER), true)
#PRODUCT_PACKAGES += \
    #libcyanogen-dsp \
    #audio_effects.conf
#endif

# Viper4Rise 
PRODUCT_COPY_FILES += \
    vendor/six/prebuilt/lib/libauaudioutils.so:system/lib/libauaudioutils.so \
    vendor/six/prebuilt/lib/libaudsd2pcm.so:system/lib/libaudsd2pcm.so \
    vendor/six/prebuilt/lib/libldacBT_enc.so:system/lib/libldacBT_enc.so \
    vendor/six/prebuilt/lib/libsrsprocessing.so:system/lib/libsrsprocessing.so \
    vendor/six/prebuilt/lib/libgnmc_decoder.1.1.8.so:system/lib/libgnmc_decoder.1.1.8.so \
    vendor/six/prebuilt/lib/libausndfile.so:system/lib/libausndfile.so \
    vendor/six/prebuilt/lib/libausoxr.so:system/lib/libausoxr.so \
    vendor/six/prebuilt/lib/libauusb.so:system/lib/libauusb.so \
    vendor/six/prebuilt/lib/libauogg.so:system/lib/libauogg.so \
    vendor/six/prebuilt/lib/libgnsdk_dsp.3.09.0.so:system/lib/libgnsdk_dsp.3.09.0.so \
    vendor/six/prebuilt/lib/libautaglib.so:system/lib/libautaglib.so \
    vendor/six/prebuilt/lib/libmaxxeffectwrapper.so:system/lib/libmaxxeffectwrapper.so \
    vendor/six/prebuilt/lib/libV4AJniUtils.so:system/lib/libV4AJniUtils.so \
    vendor/six/prebuilt/lib/libMAM2-processcode-Coretex_A9.so:system/lib/libMAM2-processcode-Coretex_A9.so \
    vendor/six/prebuilt/lib/libMAM2-wavesfx-Coretex_A9.so:system/lib/libMAM2-wavesfx-Coretex_A9.so \
    vendor/six/prebuilt/lib/libosl-maxxaudio-itf.so:system/lib/libosl-maxxaudio-itf.so \
    vendor/six/prebuilt/lib/libauvorbis.so:system/lib/libauvorbis.so \
    vendor/six/prebuilt/lib/libgnustl_shared.so:system/lib/libgnustl_shared.so \
    vendor/six/prebuilt/lib/libradsone-shared.so:system/lib/libradsone-shared.so \
    vendor/six/prebuilt/lib/libambisonic_audio_renderer.so:system/lib/libambisonic_audio_renderer.so \
    vendor/six/prebuilt/lib/libswresample-2.so:system/lib/libswresample-2.so \
    vendor/six/prebuilt/lib/libaemagic.so:system/lib/libaemagic.so \
    vendor/six/prebuilt/lib/soundfx/libeffectproxy.so:system/lib/soundfx/libeffectproxy.so \
    vendor/six/prebuilt/lib/soundfx/libmaxxeffect-cembedded.so:system/lib/soundfx/libmaxxeffect-cembedded.so \
    vendor/six/prebuilt/lib/soundfx/libqcompostprocbundle.so:system/lib/soundfx/libqcompostprocbundle.so \
    vendor/six/prebuilt/lib/soundfx/libsonypostprocbundle.so:system/lib/soundfx/libsonypostprocbundle.so \
    vendor/six/prebuilt/lib/soundfx/libsonysweffect.so:system/lib/soundfx/libsonysweffect.so \
    vendor/six/prebuilt/lib/soundfx/libv4a_fx_ics.so:system/lib/soundfx/libv4a_fx_ics.so \
    vendor/six/prebuilt/lib/soundfx/libvisualizer.so:system/lib/soundfx/libvisualizer.so

$(call inherit-product-if-exists, vendor/six/prebuilt/prebuilt.mk)

#$(call inherit-product, vendor/six/overlay/themes/themes.mk)

