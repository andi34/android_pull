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
git fetch https://gerrit.omnirom.org/android_device_samsung_espressowifi refs/changes/64/18264/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/device/samsung/espresso3g
echo "----------------------------------------"
git fetch https://gerrit.omnirom.org/android_device_samsung_espresso3g refs/changes/56/18256/1 && git cherry-pick FETCH_HEAD
git fetch https://gerrit.omnirom.org/android_device_samsung_espresso3g refs/changes/57/18257/1 && git cherry-pick FETCH_HEAD
git fetch https://gerrit.omnirom.org/android_device_samsung_espresso3g refs/changes/58/18258/1 && git cherry-pick FETCH_HEAD
git fetch https://gerrit.omnirom.org/android_device_samsung_espresso3g refs/changes/59/18259/1 && git cherry-pick FETCH_HEAD
git fetch https://gerrit.omnirom.org/android_device_samsung_espresso3g refs/changes/60/18260/1 && git cherry-pick FETCH_HEAD
git fetch https://gerrit.omnirom.org/android_device_samsung_espresso3g refs/changes/61/18261/1 && git cherry-pick FETCH_HEAD
git fetch https://gerrit.omnirom.org/android_device_samsung_espresso3g refs/changes/62/18262/1 && git cherry-pick FETCH_HEAD
git fetch https://gerrit.omnirom.org/android_device_samsung_espresso3g refs/changes/63/18263/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/hardware/samsung
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/hardware/ti/omap4
echo "----------------------------------------"
echo "nothing for now..."
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
echo "----------------------------------------"
echo "nothing for now..."
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
cd $SAUCE
echo "Done!"
echo "----------------------------------------"
echo "----------------------------------------"
