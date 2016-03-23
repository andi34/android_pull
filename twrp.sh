#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/android-6.0

# Let's apply all commits!
echo ""
echo ""
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/build
echo "----------------------------------------"
echo "Fix error: ro.build.fingerprint cannot exceed 91 bytes (1/2)"
git fetch https://gerrit.omnirom.org/android_build refs/changes/78/17478/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "----------------------------------------"
cd $SAUCE/bionic
echo "----------------------------------------"
echo "Fix error: ro.build.fingerprint cannot exceed 91 bytes (2/2)"
git fetch https://gerrit.omnirom.org/android_bionic refs/changes/79/17479/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"
