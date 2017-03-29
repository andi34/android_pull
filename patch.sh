#!/bin/bash

ROOT="$SAUCE"
PATCHPATH="$SAUCE/pull"
PATCHREPOS=(
    'frameworks/base'
    'frameworks/native'
    'packages/apps/Settings'
)

echo "----------------------------------------"
echo "----------------------------------------"
echo "applying AOSP additions:"
echo "Fixes for devices with abnormal hw rotation"
echo "BootMessage: Show each app name being optimized during boot"
echo "Add alternate WebView provider package"
echo "screenshot: quick delete action"
echo "advanced reboot menu"
echo "Show application's package name in the 'App info' screen."
echo "Open app when clicking on icon in App Info screen"
echo "----------------------------------------"
echo "----------------------------------------"

for patches in "${PATCHREPOS[@]}"; do
    cd "${ROOT}/${patches}"
    git am --whitespace=nowarn "${PATCHPATH}/${patches}"/*
    cd "${ROOT}"
done

echo "----------------------------------------"
echo "Done!"
echo "----------------------------------------"