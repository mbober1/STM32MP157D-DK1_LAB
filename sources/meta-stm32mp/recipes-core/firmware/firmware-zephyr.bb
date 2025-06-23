SUMMARY = "Firmware for coprocesor built with ZephyrOS"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

include recipes-kernel/zephyr-kernel/zephyr-sample.inc

SRCREV_firmware = "b8f17e3d8dc3daf460732816996d49bf9d7a817b"

SRC_URI += " \
  git://github.com/mbober1/STM32MP1_ZephyrOS.git;protocol=https;branch=master;name=firmware;destsuffix=git/firmware \
"

ZEPHYR_SRC_DIR = "${S}/firmware/app"
