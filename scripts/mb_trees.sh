#!/bin/bash
set -e
set -u
set -o pipefail

# How to run this script?

# Example: 
# ./mb_trees.sh

mkdir -p ../results/mrbayes/

mb < ../data/mb_batch_file.txt

### Open Figtree by typing figtree on terminal and generate and customize trees ###