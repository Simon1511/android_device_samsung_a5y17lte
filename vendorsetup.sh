#!/bin/bash

# OrangeFox specific
export FOX_VERSION="R11.1"
export FOX_BUILD_TYPE="Beta"
export OF_MAINTAINER="Simon1511"
export OF_MAINTAINER_AVATAR="$PWD/device/samsung/a5y17lte/avatar.png"

#
export TARGET_ARCH="arm64"
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY"
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/platform/13540000.dwmmc0/by-name/SYSTEM"

# Tweaks
export FOX_USE_LZMA_COMPRESSION="1"
export FOX_USE_NANO_EDITOR="1"
export OF_TWRP_COMPATIBILITY_MODE="1"
export OF_KEEP_FORCED_ENCRYPTION="1"
export OF_DONT_PATCH_ENCRYPTED_DEVICE="1"
export OF_NO_TREBLE_COMPATIBILITY_CHECK="1"
export OF_SKIP_MULTIUSER_FOLDERS_BACKUP="1"
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"
export OF_FLASHLIGHT_ENABLE="0"
export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
export OF_USE_TWRP_SAR_DETECT="1"
export OF_DISABLE_MIUI_OTA_BY_DEFAULT="1"
export OF_NO_SAMSUNG_SPECIAL="1"
export FOX_USE_XZ_UTILS="1"
export OF_RUN_POST_FORMAT_PROCESS="1"
export OF_QUICK_BACKUP_LIST="/system;/boot;/data;"

add_lunch_combo omni_a5y17lte-eng

