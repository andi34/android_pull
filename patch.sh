#!/bin/bash

ROOT="$SAUCE"
PATCHPATH="$SAUCE/pull"
PATCHREPOS=(
    'frameworks/native'
    'hardware/ti/omap4'
    'packages/apps/Settings'
    'vendor/cm'
)

for patches in "${PATCHREPOS[@]}"; do
    cd "${ROOT}/${patches}"
    git am --whitespace=nowarn "${PATCHPATH}/${patches}"/* || git am --abort
    cd "${ROOT}"
done
