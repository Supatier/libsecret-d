#!/usr/bin/bash

cd ../source/gir
git clone https://github.com/GNOME/libsecret.git

cd libsecret
bash -e autogen.sh
make -j$(nproc)
mv Secret-1.gir ../

cd ..
rm -rf libsecret