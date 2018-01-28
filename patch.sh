#!/bin/bash

ROOT="$SAUCE"
PATCHPATH="$SAUCE/pull"
PATCHREPOS=(
    'build'
    'device/samsung/espresso3g'
    'device/samsung/tuna'
    'hardware/ti/omap4'
    'packages/apps/SlimLauncher'
)

for patches in "${PATCHREPOS[@]}"; do
    cd "${ROOT}/${patches}"
    git am --whitespace=nowarn "${PATCHPATH}/${patches}"/*
    cd "${ROOT}"
done
