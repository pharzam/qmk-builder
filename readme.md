# Getting Started with Containerized QMK Firmware Builder

- run build-container.sh to create ubuntu based ready to use qmk cli image
- run build-firmware.sh with following parameters;
  - version tag from qmk's github repository
  - keyboard name
  - keymap name

```bash
bash build-container.sh
bash build-firmware.sh 0.20.5 bastardkb/scylla/v2/promicro default
```

## Add keymap config

The content of the "./keyboards" folder will be copied to "./qmk/{repo-tag}/keyboards" when every execution of "build-firmware.sh".

Keymap files can be placed in the "keyboards" folder;
./keyboards/bastardkb/scylla/keymaps/{new-keymap-folder}/

The "build-firmware.sh" script will be pass the keymap parameter to "qmk" cli in the container.

Then you can just execute the "build-firmware.sh" with new keymap;

```
bash build-firmware.sh 0.20.5 bastardkb/scylla/v2/promicro new-keymap-folder
```


This repository preapared by Sinior Software Architechtuer Emre Başkale 
