require conf/machine/include/soc-family.inc
include conf/machine/include/arm/armv7a/tune-cortexa7.inc

DEFAULTTUNE = "cortexa7thf-neon-vfpv4"

SOC_FAMILY = "stm32mp1"

PREFERRED_PROVIDER_virtual/kernel ??= "linux-mainline"

UBOOT_SUFFIX = "img"
UBOOT_ENTRYPOINT = "0xC2000040"

SERIAL_CONSOLES = "115200;ttySTM0"
SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"


# Do not update fstab file when using wic images
WIC_CREATE_EXTRA_ARGS ?= "--no-fstab-update"

# Image
IMAGE_FSTYPES = "wic wic.zst tar.zst"

WKS_FILE_DEPENDS ?= " \
    virtual/bootloader \
    e2fsprogs-native \
"

# Wic default support
WKS_FILE ?= "stm32mp157-basic.wks.in"

KERNEL_IMAGETYPE ?= "zImage"

MACHINE_FEATURES += "watchdog gpu m4copro usbg0"
