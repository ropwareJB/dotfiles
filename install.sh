#!/bin/sh
SRCDIR=src

git submodule init
git submodule update

SRCFILES=$(ls -A $SRCDIR)

for S in $SRCFILES
do
	cp -R $SRCDIR/$S ~/
done
