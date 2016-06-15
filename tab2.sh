#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/mm6.0

# Let's apply all commits!
echo ""
echo "----------------------------------------"
cd $SAUCE/device/samsung/espressowifi
echo "----------------------------------------"
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espressowifi refs/changes/79/16579/2 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/device/samsung/espresso3g
echo "----------------------------------------"
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espresso3g refs/changes/73/16573/1 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espresso3g refs/changes/74/16574/1 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espresso3g refs/changes/75/16575/1 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espresso3g refs/changes/76/16576/1 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espresso3g refs/changes/77/16577/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/kernel/samsung/espresso10
echo "----------------------------------------"
echo "Nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/hardware/samsung
echo "----------------------------------------"
echo "Nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/hardware/ti/omap4
echo "----------------------------------------"
echo "Nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/frameworks/av
echo "----------------------------------------"
echo "Nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/frameworks/base
echo "----------------------------------------"
echo "Nothing for now..."
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
git fetch https://github.com/andi34/proprietary_vendor_samsung-2.git mm6.0
git cherry-pick 4ff7c74576990228eec7d224717763f46c6f326f
git cherry-pick 7f9c0809da7875666f678510216553ba5237c473
echo "----------------------------------------"
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"
