#!/bin/bash
set -e
set -u
set -o pipefail

# How to run this script?

# Example: 
# ./distance_trees.sh

cd ../data/
cp primates_5.phy infile
dnadist infile # Press Y
mv infile infile_dnadist
mv outfile infile
neighbor infile # Press Y
mkdir -p ../results/distance
mv infile infile_primates
mv outfile outfile_primates
mv outtree outtree_primates
mv infile_primates outfile_primates outtree_primates ../results/distance

### Open Figtree by typing figtree on terminal and generate and customize trees ###

mv infile_dnadist infile
dnadist infile # Press Y
mv infile infile_dnadist
mv outfile infile
fitch infile # Press G (Yes) and Y
mkdir -p ../results/distance
mv infile infile_mtdna
mv outfile outfile_mtdna
mv outtree outtree_mtdna
mv infile_mtdna outfile_mtdna outtree_mtdna ../results/distance

### Open Figtree by typing figtree on terminal and generate and customize trees ###

# GETTING ERROR MESSAGE!
# megacc -a primates_config_mega.mao -d primates_2.meg -o ../results/distance/primates_mega.meg