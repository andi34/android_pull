#!/bin/bash

ROOT="$SAUCE"
PATCHPATH="$SAUCE/pull"
PATCHREPOS=(
    'build'
    'device/samsung/espresso3g'
    'device/samsung/espressowifi'
    'device/samsung/tuna'
)

for patches in "${PATCHREPOS[@]}"; do
    cd "${ROOT}/${patches}"
    git am --whitespace=nowarn "${PATCHPATH}/${patches}"/* || git am --abort
    cd "${ROOT}"
done
