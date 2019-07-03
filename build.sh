#!/bin/sh

set -x

uname -a
# expecting `Darwin`

markdown -o minia.html minia.md
