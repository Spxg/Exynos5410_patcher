#!/bin/sh

# Apply these patches before compilation:

ROM_TREE=$PWD
cd $ROM_TREE
rm -rf bootable/recovery-twrp/ frameworks/base/ system/core/ external/libselinux/
repo sync -j20 --force-sync