#!/usr/bin/env bash

set -euox pipefail

root=$(git rev-parse --show-toplevel)

function main() {
    major=${1}
    minor=${2}
    patch=${3}
    pre=${4}
    build=${5}
    mkdir -p ${root}/dist-extra
    echo > ${root}/dist-extra/version.json "{\"version\":\"${major}.${minor}.${patch}-${pre}+${build}\",\"major\": \"${major}\",\"minor\": \"${minor}\",\"patch\": \"${patch}\",\"pre\": \"${pre}\",\"build\": \"${build}\"}"
}

main ${1} ${2} ${3} ${4} ${5}
