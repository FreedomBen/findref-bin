#!/usr/bin/env bash

# shellcheck disable=SC2164

# Hacky script to rename for easier uploading github assets
#
# Useful for creating a Github "release" (rather than just tagging)
#
# Run this from the current directory.  It will create/populate the
# 'uploads' dir that you can then upload to github through the release UI

if [ -z "$1" ]; then
  echo "Pass first arg as version number"
  exit 1
fi

mkdir -p upload
cd "$1/darwin/arm64"

# Darwin
cp findref.zip "../../../upload/findref-$1-darwin-arm64.zip"
cd "../amd64"
cp findref.zip "../../../upload/findref-$1-darwin-amd64.zip"

# Linux
cd "../../linux/386"
cp findref.zip "../../../upload/findref-$1-linux-386.zip"
cd "../amd64"
cp findref.zip "../../../upload/findref-$1-linux-amd64.zip"
cd "../arm"
cp findref.zip "../../../upload/findref-$1-linux-arm.zip"
cd "../arm64"
cp findref.zip "../../../upload/findref-$1-linux-arm64.zip"

# Windows
cd "../../windows/386"
cp findref.zip "../../../upload/findref-$1-windows-386.zip"
cd "../amd64"
cp findref.zip "../../../upload/findref-$1-windows-amd64.zip"

# FreeBSD
cd "../../freebsd/arm64"
cp findref.zip "../../../upload/findref-$1-freebsd-arm64.zip"
cd "../amd64"
cp findref.zip "../../../upload/findref-$1-freebsd-amd64.zip"

# OpenBSD
cd "../../openbsd/arm64"
cp findref.zip "../../../upload/findref-$1-openbsd-arm64.zip"
cd "../amd64"
cp findref.zip "../../../upload/findref-$1-openbsd-amd64.zip"
