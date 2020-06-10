#!/bin/bash
set -e
set -u
set -o pipefail

# How to run this script?

# Example: 
# ./molecular_clock.sh

cd ../data/
mkdir -p ../results/paml/primates_unrooted/
baseml baseml_1.ctl
mv 2base.t lnf rates rst rst1 rub ../results/paml/primates_unrooted/

mkdir -p ../results/paml/primates_rooted/
baseml baseml_2.ctl
mv 2base.t lnf rates rst rst1 rub ../results/paml/primates_rooted/