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
echo "android-api: add MM"
git fetch https://gerrit.omnirom.org/android_hardware_ti_omap4 refs/changes/58/16158/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "camera: fix build for MM"
git fetch https://gerrit.omnirom.org/android_hardware_ti_omap4 refs/changes/59/16159/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "domx: pass ANDROID_API_CFLAGS"
git fetch https://gerrit.omnirom.org/android_hardware_ti_omap4 refs/changes/60/16160/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "domx: Fix GetParameter crashing with OMX_IndexParamConsumerUsageBits"
git fetch https://gerrit.omnirom.org/android_hardware_ti_omap4 refs/changes/61/16161/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "camera: fix build for recent 6.0 releases"
git fetch https://gerrit.omnirom.org/android_hardware_ti_omap4 refs/changes/62/16162/1 && git cherry-pick FETCH_HEAD
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
