#!/bin/bash

ROOT="$SAUCE"
PATCHPATH="$SAUCE/pull/asb"
PATCHREPOS=(
    'bionic'
    'external/bluetooth/bluedroid'
    'external/libvpx'
    'external/sqlite'
    'frameworks/native'
)

for patches in "${PATCHREPOS[@]}"; do
    cd "${ROOT}/${patches}"
    git am --whitespace=nowarn "${PATCHPATH}/${patches}"/* || git am --abort
    cd "${ROOT}"
done

cd $ROOT/pull
. patch.sh
