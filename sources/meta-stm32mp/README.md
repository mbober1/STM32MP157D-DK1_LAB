## Summary

**meta-olimex BSP layer** is a layer containing bsp for the Olimex STMP157-OLinuXino-LIME2

This layer relies on OpenEmbedded/Yocto build system that is provided through
Bitbake and OpenEmbedded-Core layers or Poky layer all part of the Yocto Project

The Yocto Project has extensive documentation about OE including a reference manual
which can be found at:

 * **http://yoctoproject.org/documentation**

For information about OpenEmbedded, see the OpenEmbedded website:

 * **http://www.openembedded.org/**

This layer depends on:

```
[OECORE]
URI: git://git.yoctoproject.org/poky
layers: meta
branch: same dedicated branch as meta-olimex
revision: HEAD
```

```
[META-OPENEMBEDDED]
URI: git://github.com/openembedded/meta-openembedded.git
layers: meta-python meta-oe
branch: same dedicated branch as meta-olimex
revision: HEAD
```

```
[META-CLANG]
URI: git://github.com/kraj/meta-clang
layers: meta-clang
branch: same dedicated branch as meta-olimex
revision: HEAD
```


## Contributing
If you want to contribute changes, you can send Github pull requests at
**https://github.com/mbober1/meta-olimex/pulls**.


## Maintainers
 - Marcin Bober <mbober1@gmail.com>
