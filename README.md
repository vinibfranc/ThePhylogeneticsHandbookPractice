# ThePhylogeneticsHandbookPractice
Practical activities proposed in the book "The Phylogenetic Handbook: A Practical Approach to Phylogenetic Analysis and Hypothesis Testing"

--------------------------------

## Practices

### Chapter 3: Multiple sequence alignment

In this practical exercise, we will align TRIM5α gene sequences from different primate species. TRIM5α is a retroviral restriction factor that protects most Old World monkey cells against HIV infection. This data set was originally analyzed by Sawyer et al. (2005), and is also used in the practical exercise on molecular clock analysis (Chapter 11). We will employ progressive alignment (ClustalX), consistency-based scoring (T-Coffee) and iterative refinement (Muscle) to create different protein alignments and compare the results using the AltAVisT webserver. The exercise is designed to cover a program with a graphical user interface, a webserver and a command-line program. We will align the sequences at the amino acid level, compare different alignment algorithms, generate a corresponding nucleotide alignment and manually refine the result. Both the amino acid and nucleotide sequences (“primatesAA.fasta” and “primatesNuc.fasta,” respectively) are available for download at www.thephylogenetichandbook.org.

### Chapter 5: Phylogenetic inference based on distance methods

To infer a NJ tree using the program neighbor from the Phylip package for the primates alignment (primates_5.phy file: alignment in sequential Phylip format), an input file with pairwise evolutionary distances is required. Therefore, before starting the neighbor-joining program, first we need to calculate the distance matrix using the program dnadist, employing the F84 model and an empirical transition/transversion ratio of 2. The matrix in the
outfile is already in the appropriate format, and it can be used directly as input file for neighbor. After the generation of results in results/distance folder, we can open the file outtree in the figtree program.

The Fitch–Margoliash tree is calculated with the program fitch by employing the same distance matrix used for estimating the NJ tree, but now for mtDNA dataset. The only option to be changed is option G (select Yes), which slows down a little the computation but increases the probability of finding a tree minimizing the difference between estimated pairwise distances and patristic distances. Again, the tree written to the outtree file can be displayed and edited with the TreeView or FigTree program.

In the last practice of this chapter, we will use the primates data set as an example to see how different evolutionary assumptions can affect the tree estimated with a tree-based algorithm like NJ, and can occasionally lead to dramatically “wrong” tree topologies. We will perform tree inference using the MEGAX (user interface) program and the file primates.meg.

### Chapter 6: Phylogenetic inference using maximum likelihood methods

The hivALN_2.phy will be analyzed with IQPNNI (Vinh & von Haeseler, 2004) to infer a maximum likelihood tree and Tree-Puzzle 5.3 (Schmidt et al., 2002) to compute support values for the branches of the ML tree.

### Chapter 7: Bayesian phylogenetic analysis using MR BAYES

This section is a tutorial based on the primates.nex data file. It will guide you through a basic Bayesian MCMC analysis of phylogeny, explaining the most important features of the program.

### Chapter 11: Molecular clock analysis 

In this exercise, we will examine clock-like behavior in two nucleotide sequence alignments. The first data set (“primates.phy”) contains the TRIM5α gene sequences for 21 different primate species. TRIM5α is present in most primates and encodes a retroviral restriction factor that protects Old World monkey cells against HIV infection (Stremlau et al., 2004). Positions with gaps in the original alignment, analyzed by Sawyer et al. (2005), were removed for our analysis here. 

The dataset, in sequential PHYLIP format (“primates_8.phy”), and the associated rooted and unrooted maximum likelihood trees (“primates_unrooted_2.tre” and “primates_rooted_2.tre”) are present in data folder.