#!/usr/bin/bash

cd ../source/gir
girtod -o .. --print-files --print-free

cd ../libsecret
sed -i -- 's/public override/public/g' *.d