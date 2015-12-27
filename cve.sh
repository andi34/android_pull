#!/bin/bash
echo "----------------------------------------"
echo " S E C U R I T Y  F I R S T ! ! ! ! "
echo "----------------------------------------"
echo "----------------------------------------"
cd build
echo "----------------------------------------"
echo "DO NOT MERGE - Backport of ag/748221 - Security Patch Level in Settings CL#2/3"
git fetch https://gerrit.omnirom.org/android_build refs/changes/06/15606/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "Update security string to 2015-12-01 - DO NOT MERGE"
git fetch https://gerrit.omnirom.org/android_build refs/changes/98/16198/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
cd ..
echo "----------------------------------------"
echo "----------------------------------------"
cd frameworks/av
echo "----------------------------------------"
echo "Limit allocations to avoid out-of-memory"
git fetch https://gerrit.omnirom.org/android_frameworks_av refs/changes/82/16182/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "DO NOT MERGE NuCachedSource2: fix possible erroneous early free"
git fetch https://gerrit.omnirom.org/android_frameworks_av refs/changes/83/16183/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "DO NOT MERGE Fix vulnerability in mediaserver"
git fetch https://gerrit.omnirom.org/android_frameworks_av refs/changes/84/16184/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "DO NOT MERGE stagefright: fix AMessage::FromParcel"
git fetch https://gerrit.omnirom.org/android_frameworks_av refs/changes/85/16185/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "Don't crash when there's no conceal frame"
git fetch https://gerrit.omnirom.org/android_frameworks_av refs/changes/86/16186/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "MPEG4Extractor: ensure buffer size is not less than 8 for LastCommentData."
git fetch https://gerrit.omnirom.org/android_frameworks_av refs/changes/87/16187/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "Check NAL size before use"
git fetch https://gerrit.omnirom.org/android_frameworks_av refs/changes/88/16188/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "ID3: check possible integer overflow for extendedHeaderSize and paddingSize."
git fetch https://gerrit.omnirom.org/android_frameworks_av refs/changes/89/16189/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "DO NOT MERGE - OMX: allow only secure codec to remotely call allocateBuffer"
git fetch https://gerrit.omnirom.org/android_frameworks_av refs/changes/90/16190/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "DO NOT MERGE - AudioFlinger: Clear record buffers when starting RecordThread"
git fetch https://gerrit.omnirom.org/android_frameworks_av refs/changes/91/16191/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
cd ../..
echo "----------------------------------------"
echo "----------------------------------------"
cd frameworks/base
echo "----------------------------------------"
echo "DO NOT MERGE - Backport of ag/748165 to klp-dev Security patch level in Settings"
git fetch https://gerrit.omnirom.org/android_frameworks_base refs/changes/05/15605/2 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
cd ../..
echo "----------------------------------------"
echo "----------------------------------------"
cd frameworks/native
echo "----------------------------------------"
echo "add number constraint for samples per MotionEvent"
git fetch https://gerrit.omnirom.org/android_frameworks_native refs/changes/92/16192/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "DO NOT MERGE: fix build breakage"
git fetch https://gerrit.omnirom.org/android_frameworks_native refs/changes/93/16193/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "DO NOT MERGE: fix build try #2"
git fetch https://gerrit.omnirom.org/android_frameworks_native refs/changes/94/16194/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
cd ../..
echo "----------------------------------------"
echo "----------------------------------------"
cd packages/apps/Settings
echo "----------------------------------------"
echo "DO NOT MERGE - Backport of ag/748147 - Security Patch Level in Settings CL#3/3"
git fetch https://gerrit.omnirom.org/android_packages_apps_Settings refs/changes/08/15608/3 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "Add translations for Security Patch Level."
git fetch https://gerrit.omnirom.org/android_packages_apps_Settings refs/changes/62/15662/2 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
cd ../../..
echo "----------------------------------------"
echo "----------------------------------------"
cd external/skia
echo "----------------------------------------"
echo "Remove SI8_opaque_D32_nofilter_DX_arm DO NOT MERGE"
git fetch https://gerrit.omnirom.org/android_external_skia refs/changes/95/16195/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
echo "Fix removal of SI8_opaque_D32_nofilter_DX_arm"
git fetch https://gerrit.omnirom.org/android_external_skia refs/changes/96/16196/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
cd ../..
echo "----------------------------------------"
echo "----------------------------------------"
cd external/bluetooth/bluedroid
echo "----------------------------------------"
echo "DO NOT MERGE - Add proper checks for PAN & BNEP in BD stack"
git fetch https://gerrit.omnirom.org/android_external_bluetooth_bluedroid refs/changes/97/16197/1 && git cherry-pick FETCH_HEAD
echo "----------------------------------------"
cd ../../..
echo "----------------------------------------"
echo "----------------------------------------"
echo "DONE !"
echo "----------------------------------------"
echo "----------------------------------------"
