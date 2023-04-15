FROM ubuntu:jammy as qmk_env
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y python3 python3-pip git sudo gcc-arm-none-eabi gcc-avr avr-libc avrdude dfu-programmer dfu-util
RUN python3 -m pip install --user qmk
ENV PATH="${PATH}:/root/.local/bin"


FROM qmk_env as final
VOLUME [ "/qmk", "/keyboards", "/builds" ]
ENTRYPOINT [ "bash", "/usr/local/bin/build-firmware-in-container.sh" ]
COPY ./build-firmware-in-container.sh /usr/local/bin/