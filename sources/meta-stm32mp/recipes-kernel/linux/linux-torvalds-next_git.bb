DESCRIPTION = "Linux Kernel"
SECTION = "kernel"
LICENSE = "GPL-2.0-only"
LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"

inherit kernel
inherit kernel-yocto
require recipes-kernel/linux/linux-yocto.inc

LINUX_VERSION = "6.15"
BRANCH = "linux-6.15.y"
SRCREV = "${AUTOREV}"
PV = "${LINUX_VERSION}+git"

KERNEL_VERSION_SANITY_SKIP="1"

SRC_URI = " \
	git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git;protocol=https;branch=${BRANCH} \
	git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=master;destsuffix=kernel-meta;protocol=https \
	file://add-olinuxino-lime-support.patch \
	file://add-axp209-support.patch \
	file://stm32.cfg \
	"

KCONFIG_MODE="--alldefconfig"
KBUILD_DEFCONFIG = "multi_v7_defconfig"
COMPATIBLE_MACHINE = "(stm32mp1)"
DEPENDS += "lzop-native"
