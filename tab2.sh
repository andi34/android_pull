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
git fetch https://gerrit.omnirom.org/android_hardware_ti_omap4 refs/changes/82/17482/1 && git cherry-pick FETCH_HEAD
git fetch https://gerrit.omnirom.org/android_hardware_ti_omap4 refs/changes/83/17483/2 && git cherry-pick FETCH_HEAD
git fetch https://gerrit.omnirom.org/android_hardware_ti_omap4 refs/changes/84/17484/2 && git cherry-pick FETCH_HEAD
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
echo "nothing for now..."
echo "----------------------------------------"
cd ../..
echo "----------------------------------------"
echo "----------------------------------------"
cd frameworks/base
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
cd ../..
echo "----------------------------------------"
echo "----------------------------------------"
cd frameworks/native
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
cd ../..
echo "----------------------------------------"
echo "----------------------------------------"
cd frameworks/opt/telephony
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
cd ../../..
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
echo "nothing for now..."
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
