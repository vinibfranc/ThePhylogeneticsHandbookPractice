#!/bin/bash
set -e
set -u
set -o pipefail

# How to run this script?

# Example: 
# ./configure_tools.sh ../tools

[ $# -eq 0 ] && { echo "USAGE: $0 dir/to/install/tools"; exit 1; }

mkdir $1
cd $1

# ClustalW
sudo apt-get install -y clustalw
# T-Coffee
sudo apt-get install -y t-coffee
# MUSCLE
wget http://www.drive5.com/muscle/downloads3.8.31/muscle3.8.31_i86linux64.tar.gz
tar xzvf muscle3.8.31_i86linux64.tar.gz
echo 'PATH=$PATH:'$(pwd)/ >> ~/.bashrc
# PHYLIP
wget http://evolution.gs.washington.edu/phylip/download/phylip-3.697.tar.gz
tar xzvf phylip-3.697.tar.gz
cd phylip-3.697/src
make -f Makefile.unx install
cd ..
echo 'PATH=$PATH:'$(pwd)/exe >> ~/.bashrc
# FigTree
sudo apt-get install -y figtree
# MEGAX
sudo dpkg -i megax_10.1.8-1_amd64.deb
# IQPNNI
wget http://www.cibiv.at/software/iqpnni/iqpnni-3.3.2-bin.tar.gz
tar xzvf iqpnni-3.3.2-bin.tar.gz
mkdir -p iqpnni/
mv iqpnni-332-linux iqpnni/iqpnni-332-linux
echo 'PATH=$PATH:'$(pwd)/iqpnni/ >> ~/.bashrc
# TREE-PUZZLE
wget http://www.tree-puzzle.de/tree-puzzle-5.3.rc16-linux.tar.gz
tar xzvf tree-puzzle-5.3.rc16-linux.tar.gz
cd tree-puzzle-5.3.rc16-linux/src
mkdir -p ../bin/
mv puzzle-linux-gcc ../bin/
cd ../bin/
mv puzzle-linux-gcc puzzle
echo 'PATH=$PATH:'$(pwd)/ >> ~/.bashrc
cd ../..