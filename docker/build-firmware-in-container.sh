#!/bin/bash

DATE=$(date +%Y-%m-%d-%H-%M)


MASTER_RIGHT_DIR="/builds/${DATE}/master-right"
MASTER_LEFT_DIR="/builds/${DATE}/master-left"

# create firmware directories for both handedness
mkdir -p ${MASTER_RIGHT_DIR}
mkdir -p ${MASTER_LEFT_DIR}

# check and clone qmk firmware for branch when not exists
if [[ ! -d "/qmk/${QMK_BRANCH}" ]]; then
  qmk clone -b ${QMK_BRANCH} --baseurl https://github.com qmk/qmk_firmware /qmk/${QMK_BRANCH}
  qmk setup
fi

# copy always keyboard configurations
cp -r /keyboards/* /qmk/${QMK_BRANCH}/keyboards/

# add right handedness to config
echo "#define MASTER_RIGHT" >> /qmk/${QMK_BRANCH}/keyboards/${KEYBOARD}/config.h
# compile, build firmware for right
qmk compile -kb ${KEYBOARD} -km ${KEYMAP}
# copy firmware to host volume
cp /qmk/${QMK_BRANCH}/.build/*.hex  ${MASTER_RIGHT_DIR}
cp /qmk/${QMK_BRANCH}/.build/*.elf  ${MASTER_RIGHT_DIR}

# clean build files etc.
qmk clean

# change right to left handedness in config
sed -i 's/MASTER_RIGHT$/MASTER_LEFT/' /qmk/${QMK_BRANCH}/keyboards/${KEYBOARD}/config.h
# compile, build firmware for left
qmk compile -kb ${KEYBOARD} -km ${KEYMAP}

# copy firmware to host volume
cp /qmk/${QMK_BRANCH}/.build/*.hex  ${MASTER_LEFT_DIR}
cp /qmk/${QMK_BRANCH}/.build/*.elf  ${MASTER_LEFT_DIR}

# clean build files etc.
qmk clean
