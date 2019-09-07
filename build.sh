#!/bin/sh

set -x

# uname -a
# expecting `Darwin`

./doc/bin/generate.py --type minia.org \
        <./doc/src/doc.mmd >./doc/out_minia.org/doc.md
markdown <./doc/out_minia.org/doc.md >./doc/out_minia.org/doc.html
./doc/bin/generate.py --type GitHub \
        <./doc/src/doc.mmd >./doc/out_GitHub/doc.md
