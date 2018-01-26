ROOT="$SAUCE"
PATCHPATH="$SAUCE/pull/golden"
PATCHREPOS=(
    'frameworks/av'
    'frameworks/base'
    'frameworks/native'
    'packages/apps/Camera2'
    'system/core'
)

for patches in "${PATCHREPOS[@]}"; do
    cd "${ROOT}/${patches}"
    git am --whitespace=nowarn "${PATCHPATH}/${patches}"/*
    cd "${ROOT}"
done