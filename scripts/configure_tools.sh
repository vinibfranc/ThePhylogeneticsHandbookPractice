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