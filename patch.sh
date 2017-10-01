#!/bin/sh

# Apply these patches before compilation:

ROM_TREE=$PWD
PATCHER_PATH=$ROM_TREE/Exynos5410_patcher
PATCH=$PATCHER_PATH/exynos5410



### Exynos5410's patches
cd $ROM_TREE/bootable/recovery-twrp
git fetch https://gerrit.omnirom.org/android_bootable_recovery refs/changes/96/22096/3 && git cherry-pick FETCH_HEAD

cd $ROM_TREE/frameworks/base
git fetch https://review.lineageos.org/LineageOS/android_frameworks_base refs/changes/45/169945/2 && git cherry-pick FETCH_HEAD

cd $ROM_TREE/external/libselinux
git am $PATCH/libselinux.patch

cd $ROM_TREE/frameworks/base			
git am $PATCH/Zygote.patch

cd $ROM_TREE/system/core				
git am $PATCH/core.patch



