# TWRP device tree for Samsung A5 2017 aka a5y17lte

## Device configuration for Samsung A5 2017

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Octa-core 1.9 GHz Cortex-A53
CHIPSET | Samsung Exynos 7 Quad 7570
GPU     | Mali-T830MP3
Memory  | 3 GB
Shipped Android Version | Android 6.0
Storage | 32 GB
MicroSD | Up to 256 GB
Battery | Non-removable Li-Ion 3000 mAh
Dimensions | 146.1 x 71.4 x 7.9 mm
Display | 1080 x 1920 pixels, 5.2"
Rear Camera  | 16 MP, f/1.9, 27mm (wide), AF, LED flash, HDR, video 1080p@30fps
Front Camera | 16 MP, f/1.9, video 1080p@30fps
Release Date | January 2017

## Kernel source 
Available at https://github.com/corsicanu/android_kernel_samsung_universal7880

## How to build
This was tested and it's fully compatible with [minimal manifest twrp](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni).
1. Set up the build environment following instructions from [here](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni/blob/twrp-9.0/README.md#getting-started)
2. In the root folder of cloned repo you need to clone the device tree:
```bash
git clone -b android-9.0 https://github.com/teamwin/android_device_samsung_a5y17lte.git device/samsung/a5y17lte
```
3. To build:
```bash
export ALLOW_MISSING_DEPENDENCIES=true && . build/envsetup.sh && lunch omni_a5y17lte-eng && mka recoveryimage -j128
```
