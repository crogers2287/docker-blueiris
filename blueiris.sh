#!/bin/bash

BLUEIRIS_EXE="/root/prefix32/drive_c/Program Files/Blue Iris 4/BlueIris.exe"
PREFIX_DIR="/root/prefix32"
INSTALL_EXE="/root/BlueIris_48603.exe"

if [ ! -d "$PREFIX_DIR/drive_c" ]; then
    mv /root/prefix32_original/* /root/prefix32
fi

chown -R root:root /root/prefix32

if [ ! -e "$BLUEIRIS_EXE" ] ; then
    if [ ! -e "$INSTALL_EXE" ] ; then
        wget https://blueirissoftware.com/BlueIris_48603.exe
    fi
    wine BlueIris_48603.exe
    rm BlueIris_48603.exe
fi

wine "$BLUEIRIS_EXE"
