 #!/bin/bash

SCRIPT_DIR=$(dirname $(readlink -f "$0"))

QMK_BRANCH=$1
KEYBOARD=$2
KEYMAP=$3
CUSTOM_KEYMAP=$4

if [[ "${QMK_BRANCH}" == "" ]]; then
  printf "parameter required, please pass a version tag from qmk's github repo ...\n"
  exit 1
fi

if [[ "${KEYBOARD}" == "" ]]; then
  printf "parameter required, please pass a keyboard name...\n"
  exit 1
fi

if [[ "${KEYMAP}" == "" ]]; then
  printf "parameter required, please pass a keymap name...\n"
  exit 1
fi

docker run --rm -v ${SCRIPT_DIR}/qmk:/qmk -v ${SCRIPT_DIR}/keyboards:/keyboards -v ${SCRIPT_DIR}/builds:/builds -e QMK_BRANCH=${QMK_BRANCH} -e QMK_HOME=/qmk/${QMK_BRANCH} -e KEYBOARD=${KEYBOARD} -e KEYMAP=${KEYMAP} -e CUSTOM_KEYMAP=${CUSTOM_KEYMAP}  ubuntu-qmk
