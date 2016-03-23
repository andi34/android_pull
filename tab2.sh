#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/android-6.0

# Let's apply all commits!
echo ""
echo ""
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/device/samsung/espressowifi
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/device/samsung/espresso3g
echo "nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/hardware/samsung
echo "nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/hardware/ti/omap4
echo "----------------------------------------"
git fetch https://gerrit.omnirom.org/android_hardware_ti_omap4 refs/changes/82/17482/1 && git cherry-pick FETCH_HEAD
git fetch https://gerrit.omnirom.org/android_hardware_ti_omap4 refs/changes/83/17483/2 && git cherry-pick FETCH_HEAD
git fetch https://gerrit.omnirom.org/android_hardware_ti_omap4 refs/changes/84/17484/2 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/kernel/samsung/espresso10
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/frameworks/av
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/frameworks/base
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/frameworks/native
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/frameworks/opt/telephony
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/build
echo "----------------------------------------"
echo "Fix error: ro.build.fingerprint cannot exceed 91 bytes (1/2)"
git fetch https://gerrit.omnirom.org/android_build refs/changes/78/17478/2 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/bionic
echo "----------------------------------------"
echo "Fix error: ro.build.fingerprint cannot exceed 91 bytes (2/2)"
git fetch https://gerrit.omnirom.org/android_bionic refs/changes/79/17479/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/bootable/recovery
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/vendor/samsung
git fetch https://github.com/andi34/proprietary_vendor_samsung.git android-6.0
echo "espresso-common: revert gralloc: Recognize GRALLOC_USAGE_CURSOR as a valid usage flag."
git cherry-pick 19659ccd57ed8ce23d1e7e43b2d4f3d8356153c6
echo "----------------------------------------"
echo "espresso-common: remove the unused libQmageDecoder library"
git cherry-pick 47a6a7127d4ac8a455b7b93a55a4df6d698e4dbf
echo "----------------------------------------"
echo "espresso-common: update widevine from sprout"
git cherry-pick 3e82c8a5c4f53ce01e7fd71c88b7e22c8abf54c0
echo ""
cd $SAUCE
echo "Done!"
echo "----------------------------------------"
echo "----------------------------------------"
