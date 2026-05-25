# !/bin/bash

mkdir -p /libchdr-workdir/libchdr/build

echo "Building libchdr"
cd /libchdr-workdir/libchdr/build
cmake ..
make -j$(nproc)

echo "Installing libchdr"
cd /libchdr-workdir/libchdr/build && make install
ldconfig

echo "Done"
