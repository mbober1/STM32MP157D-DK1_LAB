FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:stmp157-olinuxino-lime2 += " \
	file://add-olinuxino-lime-support.patch \
	file://add-axp209-support.patch \
"

DEPENDS += "lzop-native"

COMPATIBLE_MACHINE = "(stm32mp1)"
