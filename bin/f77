#!/bin/sh

#Simple wrapper for compiling FORTRAN on FreeBSD

export LD_PRELOAD=/usr/local/lib/gcc8/libgcc_s.so
gfortran8 --free-form -Wl,-rpath=/usr/local/lib/gcc8 "$1" -o "$2"

