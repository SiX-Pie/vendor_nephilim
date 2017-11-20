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

include vendor/six/configs/aosp_fixes.mk
include vendor/six/configs/bootanimation.mk
include vendor/six/configs/six_main.mk
include vendor/six/configs/system_additions.mk
include vendor/six/configs/version.mk

# Telephony packages
PRODUCT_PACKAGES += \
    Stk

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
    drm.service.enabled=true \
    persist.volte_enabled_by_hw=1 \
    persist.dbg.ims_volte_enable=1 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.data.iwlan.enable=true \
    persist.dbg.wfc_avail_ovr=1

# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.dun.override=0
