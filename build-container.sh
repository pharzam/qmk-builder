 #!/bin/bash

SCRIPT_DIR=$(dirname $(readlink -f "$0"))

docker build -f ${SCRIPT_DIR}/docker/Dockerfile -t ubuntu-qmk ${SCRIPT_DIR}/docker

printf "container image created as 'ubuntu-qmk'.\n please run the build-firmware script with version tag from qmk's github repo, keyboard and keymap paramters...\n e.g. > bash build-firmware.sh 0.20.5 bastardkb/scylla/v2/promicro default\n" 