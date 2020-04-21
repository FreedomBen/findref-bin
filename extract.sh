#!/usr/bin/env bash

# Hacky script to rename for easier uploading github assets

mkdir -p upload
cd latest/darwin/386

cp findref.zip ../../../upload/findref-darwin-386.zip
cd ../amd64
cp findref.zip ../../../upload/findref-darwin-amd64.zip
cd ../../linux/386

cp findref.zip ../../../upload/findref-linux-386.zip
cd ../amd64
cp findref.zip ../../../upload/findref-linux-amd64.zip
cd ../arm
cp findref.zip ../../../upload/findref-linux-arm.zip
cd ../arm64
cp findref.zip ../../../upload/findref-linux-arm64.zip
cd ../../windows/386

cp findref.zip ../../../upload/findref-windows-386.zip
cd ../amd64
cp findref.zip ../../../upload/findref-windows-amd64.zip
