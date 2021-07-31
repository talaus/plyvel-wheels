#!/bin/sh

set -eux

python --version
cython --version

git clean -xfd
make cython

python3.9 -m cython --cplus --fast-fail --annotate plyvel/_plyvel.pyx
python3.9 ./setup.py build_ext
