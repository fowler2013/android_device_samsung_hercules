#!/bin/sh

echo Patching each individual repo for regular building...

cd vendor/samsung
git reset --hard && git clean -f -d
cd ../../packages/apps/Camera2
git reset --hard && git clean -f -d
patch -p1 < ../../../device/samsung/hercules/patches/camera2-1080p-preview-size.patch
cd ../../../frameworks/base
git reset --hard && git clean -f -d
git apply ../../device/samsung/hercules/patches/fw-base-mobile-network.patch
cd ../..
