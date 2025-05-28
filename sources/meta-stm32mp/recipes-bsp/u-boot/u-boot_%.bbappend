FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
LIC_FILES_CHKSUM:stmp157-olinuxino-lime2 = "file://Licenses/README;md5=5a7450c57ffe5ae63fd732446b988025"
BRANCH = "release-20241121"

SRC_URI:stmp157-olinuxino-lime2 = " \
  git://github.com/OLIMEX/u-boot-olinuxino.git;protocol=https;branch=${BRANCH} \
  file://bootcmd.cfg \
"

SRCREV:stmp157-olinuxino-lime2 = "${AUTOREV}"
