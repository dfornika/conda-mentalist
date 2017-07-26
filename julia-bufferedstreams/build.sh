#!/bin/bash

if [ "$JULIA_VERSION" = "<UNDEFINED>" -o "$JULIA_VERSION" = "" ]
then
    JULIA_VERSION=0.5
fi

JULIA_PKG_NAME=BufferedStreams
DEST="$PREFIX/share/julia/site/v$JULIA_VERSION/$JULIA_PKG_NAME"

mkdir -p "$DEST"
cp --recursive --archive --no-target-directory "$PWD" "$DEST"

