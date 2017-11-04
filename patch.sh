#!/bin/bash

ROOT="$SAUCE"
PATCHPATH="$SAUCE/pull"
PATCHREPOS=(
    'device/samsung/espresso3g'
    'frameworks/base'
    'vendor/unlegacy'
)

for patches in "${PATCHREPOS[@]}"; do
    cd "${ROOT}/${patches}"
    git am --whitespace=nowarn "${PATCHPATH}/${patches}"/*
    cd "${ROOT}"
done
