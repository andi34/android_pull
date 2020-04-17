#!/bin/bash

ROOT="$SAUCE"
PATCHPATH="$SAUCE/pull"
PATCHREPOS=(
    'build'
    'frameworks/av'
    'vendor/cm'
)

for patches in "${PATCHREPOS[@]}"; do
    cd "${ROOT}/${patches}"
    git am --whitespace=nowarn "${PATCHPATH}/${patches}"/*
    cd "${ROOT}"
done
