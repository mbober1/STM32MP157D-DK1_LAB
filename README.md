# STM32MP157D-DK1 Lab

### Build Yocto
```
repo init -u https://github.com/mbober1/STM32MP157D-DK1_LAB.git -m default.xml
repo sync -j$(nproc)

./setup-environment build
source sources/oe-core/oe-init-build-env build
bitbake lab-image-minimal
```

### Build from scratch
1. Prepare [toolchain](https://github.com/mbober1/STM32MP157D-DK1_LAB/blob/master/doc/toolchain.md).
2. Build [U-Boot](https://github.com/mbober1/STM32MP157D-DK1_LAB/blob/master/doc/u-boot_basic.md) and prepare SD card.
3. Build [Linux](https://github.com/mbober1/STM32MP157D-DK1_LAB/blob/master/doc/linux.md) and initrd.
