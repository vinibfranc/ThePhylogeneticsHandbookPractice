#!/bin/bash
set -e
set -u
set -o pipefail

# How to run this script?

# Example: 
# ./msa.sh

mkdir -p ../results/msa

clustalw -ALIGN -INFILE=../data/primatesAA_2.fasta -OUTFILE=../results/msa/primatesAA_2_clustalw.fasta

# T-Coffe was run on the web server
# Command-line used on the server: t_coffee -in=data_fc6ed3f9.in -mode=regular -output=score_html clustalw_aln fasta_aln score_ascii phylip -maxnseq=150 -maxlen=10000 -case=upper -seqnos=off -outorder=input -run_name=result -multi_core=4 -quiet=stdout 

muscle -in ../data/primatesAA_2.fasta -out ../results/msa/primatesAA_2_muscle.fasta

# Cannot perform comparison between MSA results because AltAVist and PROTAL2DNA were discontinued, and no other tools were found