#!/bin/bash
echo ""
echo "----------------------------------------"
cd device/samsung/p3100
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
cd ../../..
echo "----------------------------------------"
echo "----------------------------------------"
cd device/samsung/p3110
echo "nothing for now..."
echo "----------------------------------------"
cd ../../..
echo "----------------------------------------"
echo "----------------------------------------"
cd device/samsung/p5100
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
cd ../../..
echo "----------------------------------------"
echo "----------------------------------------"
cd device/samsung/p5110
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
cd ../../..
echo "----------------------------------------"
echo "----------------------------------------"
cd device/samsung/omap4-common
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
cd ../../..
echo "----------------------------------------"
echo "----------------------------------------"
cd device/samsung/espresso-common
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
cd ../../..
echo "----------------------------------------"
echo "----------------------------------------"
cd hardware/samsung
echo "nothing for now..."
echo "----------------------------------------"
cd ../..
echo "----------------------------------------"
echo "----------------------------------------"
cd hardware/ti/omap4
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
cd ../../..
echo "----------------------------------------"
echo "----------------------------------------"
cd kernel/samsung/espresso10
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
cd ../../..
echo "----------------------------------------"
echo "----------------------------------------"
cd frameworks/av
echo "----------------------------------------"
echo "libstagefright: add missing TI color format case https://review.slimroms.org/#/c/12100"
git fetch https://review.slimroms.org/SlimRoms/frameworks_av refs/changes/00/12100/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "libstagefright: Make it possible to skip OMX buffer reallocation https://review.slimroms.org/#/c/12101"
git fetch https://review.slimroms.org/SlimRoms/frameworks_av refs/changes/01/12101/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
cd ../..
echo "----------------------------------------"
echo "----------------------------------------"
cd frameworks/base
echo "----------------------------------------"
echo "Camera2 legacy: retry EGL config without EGL_RECORDABLE_ANDROID https://review.slimroms.org/#/c/11434"
git fetch https://review.slimroms.org/SlimRoms/frameworks_base refs/changes/34/11434/2 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "framework: fix screenshot and rotation animation for devices with abnormal hw rotation https://review.slimroms.org/#/c/11473"
git fetch https://review.slimroms.org/SlimRoms/frameworks_base refs/changes/73/11473/2 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
cd ../..
echo "----------------------------------------"
echo "----------------------------------------"
cd frameworks/native
echo "----------------------------------------"
echo "surfaceflinger: Reimplement hwrotation https://review.slimroms.org/#/c/11461"
git fetch https://review.slimroms.org/SlimRoms/frameworks_native refs/changes/61/11461/2 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "surfaceflinger: odd hw rotation (90/270) patch for swapping width/height https://review.slimroms.org/#/c/11462"
git fetch https://review.slimroms.org/SlimRoms/frameworks_native refs/changes/62/11462/2 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "Fix boot animation rotation problem when ro.sf.hwrotation is set to 90 or 270 https://review.slimroms.org/#/c/11463"
git fetch https://review.slimroms.org/SlimRoms/frameworks_native refs/changes/63/11463/2 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "surfaceflinger: Consolidate display orientation compensation hooks https://review.slimroms.org/#/c/11464"
git fetch https://review.slimroms.org/SlimRoms/frameworks_native refs/changes/64/11464/2 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "Revert surfaceflinger: Consolidate display orientation compensation hooks https://review.slimroms.org/#/c/11465"
git fetch https://review.slimroms.org/SlimRoms/frameworks_native refs/changes/65/11465/2 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
cd ../..
echo "----------------------------------------"
echo "----------------------------------------"
cd packages/apps/Settings
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
cd ../../..
echo "----------------------------------------"
echo "----------------------------------------"
cd build
echo "----------------------------------------"
echo "nothing..."
echo "----------------------------------------"
cd ..
echo "----------------------------------------"
echo "----------------------------------------"
cd bootable/recovery
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
cd ../..
echo "----------------------------------------"
echo "----------------------------------------"
cd system/extras
echo "----------------------------------------"
echo "ext4_utils: add BoardConfig define to suppress EMMC-corrupting wipe command https://review.slimroms.org/#/c/12102/"
git fetch https://review.slimroms.org/SlimRoms/android_system_extras refs/changes/02/12102/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
cd ../..
echo "----------------------------------------"
echo "----------------------------------------"
cd system/vold
echo "----------------------------------------"
echo "nothing..."
echo "----------------------------------------"
cd ../..
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
echo "----------------------------------------"
echo "----------------------------------------"
