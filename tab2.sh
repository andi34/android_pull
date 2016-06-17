#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/mm6.0

# Let's apply all commits!
echo ""
echo "----------------------------------------"
cd $SAUCE/device/samsung/espressowifi
echo "----------------------------------------"
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espressowifi refs/changes/48/16648/3 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espressowifi refs/changes/62/16662/2 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/device/samsung/espresso3g
echo "----------------------------------------"
echo "Nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/kernel/samsung/espresso10
echo "----------------------------------------"
echo "Nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/hardware/ti/omap4
echo "----------------------------------------"
git fetch https://review.slimroms.org/SlimRoms/hardware_ti_omap4 refs/changes/57/10457/5 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/hardware_ti_omap4 refs/changes/23/12323/7 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/hardware_ti_omap4 refs/changes/28/16628/2 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/hardware_ti_omap4 refs/changes/29/16629/2 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/hardware_ti_omap4 refs/changes/30/16630/2 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/hardware_ti_omap4 refs/changes/31/16631/2 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/hardware_ti_omap4 refs/changes/32/16632/2 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/hardware_ti_omap4 refs/changes/33/16633/2 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/hardware_ti_omap4 refs/changes/34/16634/2 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/hardware_ti_omap4 refs/changes/35/16635/2 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/hardware_ti_omap4 refs/changes/36/16636/2 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/frameworks/av
echo "----------------------------------------"
echo "Nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/frameworks/base
echo "----------------------------------------"
git fetch https://review.slimroms.org/SlimRoms/frameworks_base refs/changes/63/16663/1 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/frameworks_base refs/changes/64/16664/1 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/frameworks_base refs/changes/65/16665/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/frameworks/native
echo "----------------------------------------"
echo "Nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/bionic
echo "----------------------------------------"
echo "Nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/build
echo "----------------------------------------"
echo "Nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/bootable/recovery
echo "----------------------------------------"
echo "Nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/vendor/samsung
echo "----------------------------------------"
echo "Nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"
