# STAGE 1 - Build libchdr0 and clone neutrino
FROM python:3.14 AS stage1

RUN apt update
RUN apt install -y\
 git cmake build-essential \
 liblz4-dev libzstd-dev zlib1g-dev

WORKDIR /libchdr-workdir

## libchdr

### Clone the libchdr repo
RUN git clone https://github.com/rtissera/libchdr.git

### Build and install libchdr
WORKDIR /libchdr-workdir/libchdr
COPY docker/stage1/build_instal_libchdr.sh build_instal_libchdr.sh
RUN ./build_instal_libchdr.sh

## neutrino

### Clone neutrino server script
WORKDIR /neutrino-pc
COPY docker/stage1/clone_neutrino_pc.sh clone_neutrino_pc.sh
RUN ./clone_neutrino_pc.sh

# STAGE 2 - Prepare neutrino
FROM stage1

RUN pip install lz4

WORKDIR /neutrino-pc
COPY docker/stage2/deploy.sh /neutrino-pc/deploy.sh

RUN mkdir -p /ps2/roms

ENTRYPOINT [ "./deploy.sh" ]
CMD [ "python", "/neutrino-pc/neutrino/pc/udpfs_server.py", "-d", "/ps2/roms" ]
