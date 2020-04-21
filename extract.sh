#!/usr/bin/env bash

# shellcheck disable=SC2164

# Hacky script to rename for easier uploading github assets

if [ -z "$1" ]; then
  echo "Pass first arg as version number"
  exit 1
fi

mkdir -p upload
cd "$1/darwin/386"

cp findref.zip "../../../upload/findref-$1-darwin-386.zip"
cd "../amd64"
cp findref.zip "../../../upload/findref-$1-darwin-amd64.zip"
cd "../../linux/386"

cp findref.zip "../../../upload/findref-$1-linux-386.zip"
cd "../amd64"
cp findref.zip "../../../upload/findref-$1-linux-amd64.zip"
cd "../arm"
cp findref.zip "../../../upload/findref-$1-linux-arm.zip"
cd "../arm64"
cp findref.zip "../../../upload/findref-$1-linux-arm64.zip"
cd "../../windows/386"

cp findref.zip "../../../upload/findref-$1-windows-386.zip"
cd "../amd64"
cp findref.zip "../../../upload/findref-$1-windows-amd64.zip"
