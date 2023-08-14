#!/bin/bash
set -e
cd "$(dirname $0)"

dir="/opt/genymobile/genymotion/"

if [ ! -x "${dir}genymotion" ]
then
    echo "${dir}genymotion not found!"
    exit 1
fi

if [ -e "${dir}genymotion.real" ]
then
    echo "${dir}genymotion.real already exists!"
    exit 1
fi

mv -i "${dir}genymotion" "${dir}genymotion.real"
cp -i ./genymotion ./VBoxManage "$dir"
