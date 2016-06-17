#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/mm6.0

# Let's apply all commits!
echo ""
echo "----------------------------------------"
cd $SAUCE/device/samsung/espressowifi
echo "----------------------------------------"
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espressowifi refs/changes/79/16579/4 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espressowifi refs/changes/39/16639/3 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espressowifi refs/changes/40/16640/3 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espressowifi refs/changes/41/16641/3 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espressowifi refs/changes/42/16642/3 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espressowifi refs/changes/43/16643/3 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espressowifi refs/changes/44/16644/3 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espressowifi refs/changes/45/16645/3 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espressowifi refs/changes/46/16646/3 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espressowifi refs/changes/47/16647/3 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espressowifi refs/changes/48/16648/3 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espressowifi refs/changes/62/16662/2 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/device/samsung/espresso3g
echo "----------------------------------------"
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espresso3g refs/changes/73/16573/1 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espresso3g refs/changes/74/16574/1 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espresso3g refs/changes/49/16649/1 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espresso3g refs/changes/50/16650/1 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espresso3g refs/changes/51/16651/1 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espresso3g refs/changes/37/16637/1 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espresso3g refs/changes/38/16638/1 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espresso3g refs/changes/76/16576/2 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espresso3g refs/changes/75/16575/2 && git cherry-pick FETCH_HEAD
git fetch https://review.slimroms.org/SlimRoms/device_samsung_espresso3g refs/changes/77/16577/2 && git cherry-pick FETCH_HEAD
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
