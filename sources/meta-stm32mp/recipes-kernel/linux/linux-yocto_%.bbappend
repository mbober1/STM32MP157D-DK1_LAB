FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append:stmp157-olinuxino-lime2 = " \
	file://add-olinuxino-lime-support.patch \
	file://add-axp209-support.patch \
"

SRC_URI:append = " \
	file://stm32.cfg \
"

COMPATIBLE_MACHINE:stm32mp15-disco = "stm32mp15-disco"
