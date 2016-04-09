#!/bin/sh
SRCDIR=src
exe() { echo "\$ $@" ; "$@" ; }

exe git submodule init
exe git submodule update

for S in $(ls -A $SRCDIR)
do
	exe cp -R $SRCDIR/$S ~/
done
