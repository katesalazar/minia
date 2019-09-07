#!/bin/sh

set -x

# uname -a
# expecting `Darwin`

mkdir ./doc/out_minia.org/

./doc/bin/generate.py --type minia.org \
        <./doc/src/doc.mmd >./doc/out_minia.org/doc.md
markdown <./doc/out_minia.org/doc.md >./doc/out_minia.org/doc.html

mkdir ./doc/out_GitHub/

./doc/bin/generate.py --type GitHub \
        <./doc/src/doc.mmd >./doc/out_GitHub/doc.md
