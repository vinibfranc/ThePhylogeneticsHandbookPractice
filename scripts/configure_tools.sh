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