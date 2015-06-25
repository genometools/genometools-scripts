#!/bin/bash
set -ev
wget -q https://github.com/genometools/genometools/archive/master.zip
unzip master.zip
rm -f master.zip
cd genometools-master
make -j3
cd ..
mv genometools-master _gt