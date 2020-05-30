# ThePhylogeneticsHandbookPractice
Practical activities proposed in the book "The Phylogenetic Handbook: A Practical Approach to Phylogenetic Analysis and Hypothesis Testing"

--------------------------------

## Practices

### Chapter 3: Multiple sequence alignment

In this practical exercise, we will align TRIM5α gene sequences from different primate species. TRIM5α is a retroviral restriction factor that protects most Old World monkey cells against HIV infection. This data set was originally analyzed by Sawyer et al. (2005), and is also used in the practical exercise on molecular clock analysis (Chapter 11). We will employ progressive alignment (ClustalX), consistency-based scoring ( T-Coffee ) and iterative refinement (Muscle) to create different protein alignments and compare the results using the AltAVisT webserver. The exercise is designed to cover a program with a graphical user interface, a webserver and a command-line program. We will align the sequences at the amino acid level, compare different alignment algorithms, generate a corresponding nucleotide alignment and manually refine the result. Both the amino acid and nucleotide sequences (“primatesAA.fasta” and “primatesNuc.fasta,” respectively) are available for download at www.thephylogenetichandbook.org.