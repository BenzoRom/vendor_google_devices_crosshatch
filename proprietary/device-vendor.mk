# Copyright (C) 2020 Benzo Rom
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
$(call inherit-product, vendor/google_devices/crosshatch/crosshatch-vendor-blobs.mk)

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/google_devices/crosshatch/overlay

# Prebuilt APKs/JARs from 'vendor/app'
PRODUCT_PACKAGES += \
    crosshatch_game_driver \
    TimeService

# Prebuilt APKs/JARs from 'vendor/framework'
PRODUCT_PACKAGES += \
    com.google.android.camera.experimental2018

# Prebuilt APKs/JARs from 'proprietary/app'
PRODUCT_PACKAGES += \
    atfwd \
    datastatusnotification \
    ims \
    QtiTelephonyService \
    uceShimService \
    uimremoteclient \
    uimremoteserver

# Prebuilt APKs libs symlinks from 'proprietary/app'
PRODUCT_PACKAGES += \
    libimscamera_jni_64.so \
    libimsmedia_jni_64.so

# Prebuilt APKs/JARs from 'proprietary/framework'
PRODUCT_PACKAGES += \
    qcrilhook \
    QtiTelephonyServicelibrary \
    uimremoteclientlibrary \
    uimremoteserverlibrary

# Prebuilt APKs/JARs from 'proprietary/priv-app'
PRODUCT_PACKAGES += \
    CNEService \
    qcrilmsgtunnel

# Prebuilt APKs/JARs from 'product/app'
PRODUCT_PACKAGES += \
    com.qualcomm.qti.services.secureui \
    MobileFeliCaClient \
    MobileFeliCaMenuMainApp \
    MobileFeliCaSettingApp \
    MobileFeliCaWebPluginBoot \
    MobileFeliCaWebPlugin \
    SSRestartDetector \
    VZWAPNLib \
    xdivert

# Prebuilt APKs/JARs from 'product/framework'
PRODUCT_PACKAGES += \
    com.google.android.dialer.support \
    libhwinfo

# Overlay source 'product/overlay'
PRODUCT_PACKAGES += \
    NavigationBarModeGesturalOverlayCustom \
    PixelSetupWizardOverlay

# Prebuilt APKs/JARs from 'product/priv-app'
PRODUCT_PACKAGES += \
    AmbientSensePrebuilt \
    AppDirectedSMSService \
    CarrierServices \
    CarrierSettings \
    CarrierWifi \
    ConnMO \
    DCMO \
    DiagMon \
    DMService \
    EuiccGoogle \
    EuiccSupportPixel \
    GCS \
    HardwareInfo \
    HotwordEnrollmentOKGoogleWCD9340 \
    HotwordEnrollmentXGoogleWCD9340 \
    MyVerizonServices \
    OBDM_Permissions \
    obdm_stub \
    OemDmTrigger \
    SprintDM \
    SprintHM \
    TetheringEntitlement \
    USCCDM \
    WfcActivation

# Prebuilt APKs libs symlinks from 'product/priv-app'
PRODUCT_PACKAGES += \
    libdmengine_32.so \
    libdmjavaplugin_32.so

# Props
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true \
    ro.hardware.vulkan=adreno \
    ro.hardware.egl=adreno \
    vendor.power.pasr.enabled=true

# Prebuilt APKs/JARs from 'system_ext/framework'
PRODUCT_PACKAGES += \
    com.android.hotwordenrollment.common.util \
    com.qualcomm.qti.uceservice-V2.0-java \
    com.qualcomm.qti.uceservice-V2.1-java \
    RadioConfigLib \
    vendor.qti.hardware.alarm-V1.0-java \
    vendor.qti.hardware.data.latency-V1.0-java \
    vendor.qti.hardware.soter-V1.0-java \
    vendor.qti.ims.callinfo-V1.0-java \
    vendor.qti.voiceprint-V1.0-java

# Prebuilt APKs/JARs from 'system_ext/priv-app'
PRODUCT_PACKAGES += \
    CarrierSetup \
    grilservice \
    RilConfigService

PRODUCT_PRODUCT_PROPERTIES += \
    ro.gfx.driver.0=com.google.pixel.crosshatch.gamedriver \
    ro.gfx.driver_build_time=1551427200

# Gesture navigation
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural_custom

# Standalone symbolic links
PRODUCT_PACKAGES += \
    generate_symlinks

# Partitions to add in AB OTA images
AB_OTA_PARTITIONS += vendor

