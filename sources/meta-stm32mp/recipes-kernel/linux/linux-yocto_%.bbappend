FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append:stmp157-olinuxino-lime2 = " \
	file://add-olinuxino-lime-support.patch \
	file://add-axp209-support.patch \
"

SRC_URI:append = " \
	file://stm32.cfg \
"

KCONFIG_MODE = "--alldefconfig"
KBUILD_DEFCONFIG = "multi_v7_defconfig"
COMPATIBLE_MACHINE = "(stm32mp1)"
DEPENDS += "lzop-native"
