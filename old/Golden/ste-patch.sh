#!/bin/bash

# Path where to find the patchfiles
PATCHPATH=~/android/kk4.4/pull/Golden

# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/kk4.4


# Let's apply all patches!
cd $SAUCE/frameworks/base
git am $PATCHPATH/01-STE_OMX_Fix-1-3.patch
git fetch https://review.slimroms.org/SlimRoms/frameworks_base refs/changes/47/12947/1 && git cherry-pick FETCH_HEAD
cd ../..

cd $SAUCE/frameworks/native
git am $PATCHPATH/02-STE_OMX_Fix-2-3.patch
git am $PATCHPATH/03-Fix_buffering_on_Samsung_STE_devices.patch
cd $SAUCE

cd $SAUCE/frameworks/av
git am $PATCHPATH/04-STE_Multimedia_Fix.patch
git am $PATCHPATH/05-STE-OMX-getSupportedProfileLevel-fix.patch
git am $PATCHPATH/06-STE-OMX_Fix_Streaming_Video.patch
cd $SAUCE


cd $SAUCE/system/core
git am $PATCHPATH/07-STE_OMX_Fix-3-3.patch
git am $PATCHPATH/08-Allow_load_of_lpm.rc_by_parsing_a_cmdline_argument.patch
git fetch https://review.slimroms.org/SlimRoms/android_system_core refs/changes/48/12948/1 && git cherry-pick FETCH_HEAD
cd $SAUCE

cd $SAUCE/build
git fetch https://review.slimroms.org/SlimRoms/android_build refs/changes/43/12943/1 && git cherry-pick FETCH_HEAD
cd ..

cd $SAUCE/packages/apps/Camera2
git am $PATCHPATH/09-Fix_saturation,_contrast,_sharpness_parameters.patch
git am ../../../pull/Golden/12-packages-apps-Camera2
cd $SAUCE

cd $SAUCE/external/bouncycastle
git fetch https://gerrit.omnirom.org/android_external_bouncycastle refs/changes/20/16320/1 && git cherry-pick FETCH_HEAD
cd $SAUCE
