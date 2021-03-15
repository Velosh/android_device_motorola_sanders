# Orange Fox Recovery for Moto G (5S) Plus

### How to build ###

```bash
# Create dirs
$ mkdir of; cd of

# Init repo
$ repo init --depth=1 -u https://gitlab.com/OrangeFox/Manifest.git -b fox_9.0

# Clone sanders repo
$ git clone git://github.com/durasame/android_device_motorola_sanders -b fox-9.0 device/motorola/sanders

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j`nproc`

# Execute patch scripts
$ cd device/motorola/sanders/scripts; ./clangReplace.sh; configReplace.sh; cd ../../..

# Build
$ mv device/motorola/sanders/build_ofox.sh .; chmod +x build_ofox.sh; ./build_ofox.sh
```

## Credits
* S4M_N: For testing it.
* ArrowOS/sai4041412: By kernel tree.
* ThEMarD: By device tree, I used it as a base since I don't have the device in hand.
* Astrako: By ```build_ofox.sh``` script.
