#!/bin/bash
set -e
set -u
set -o pipefail

# How to run this script?

# Example: 
# ./ml_trees.sh

cd ../data/

iqpnni-332-linux hivALN_2.phy
# Type 'r' and change RATE HETEROGENEITY to 'Gamma distributed rates', after that press 'y')
mkdir -p ../results/max_likelihood/iqpnni
mv *.iqpnni ../results/max_likelihood/iqpnni
mv *.iqpnni.* ../results/max_likelihood/iqpnni

### Open Figtree by typing figtree on terminal and generate and customize trees ###

puzzle hivALN_2.phy 
# Type 'n' and change Number of puzzling steps to 10000, after that press 'y')
# Type 'w' and change Model of rate heterogeneity to Gamma distributed rates, after that press 'y')
# Type 'c' and change Number of Gamma rate categories to 8, after that press 'y')
mkdir -p ../results/max_likelihood/puzzle
mv *.dist *.puzzle *.tree ../results/max_likelihood/puzzle

### Open Figtree by typing figtree on terminal and generate and customize trees ###