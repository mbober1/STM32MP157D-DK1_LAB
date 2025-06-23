FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
LIC_FILES_CHKSUM:stmp157-olinuxino-lime2 = "file://Licenses/README;md5=5a7450c57ffe5ae63fd732446b988025"
BRANCH:stmp157-olinuxino-lime2 = "release-20241121"

SRC_URI:stmp157-olinuxino-lime2 = " \
  git://github.com/OLIMEX/u-boot-olinuxino.git;protocol=https;branch=${BRANCH} \
"
SRCREV:stmp157-olinuxino-lime2 = "${AUTOREV}"


BRANCH:stm32mp15-disco = "master"
SRC_URI:stm32mp15-disco = " \
  git://source.denx.de/u-boot/u-boot.git;protocol=https;branch=${BRANCH} \
  file://stm32mp157a-dk1.cfg \
  file://bootcmd.cfg \
  file://quickstart.cfg \
"
SRCREV:stm32mp15-disco = "2ab10ed2399b0c1c790733884935c94ad65aa2a8"

