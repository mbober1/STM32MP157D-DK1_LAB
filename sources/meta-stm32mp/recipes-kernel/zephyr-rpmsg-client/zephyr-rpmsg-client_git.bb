LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

inherit module

SRC_URI = " \
  file://Makefile \
  file://rpmsg_zephyr_client.c \
"

PV = "1.0+git"

S = "${WORKDIR}/sources"
UNPACKDIR = "${S}"