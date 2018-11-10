#!/bin/bash
cp $1 "$1.backup"
mv $1 temp.zip
mkdir temp
cd temp
unzip ../temp.zip
mkdir games/brutaldoom
cp -r games/doom/fabs games/brutaldoom/fabs
zip -r ../$1 *
cd ..
rm temp.zip
rm -r temp
