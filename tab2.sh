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
echo "----------------------------------------"
echo "nothing for now..."
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
