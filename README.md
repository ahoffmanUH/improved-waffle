## improved-waffle
This is a test file for introducing my final project in a new repository

## The purpose of this project is to understand the similarities/differences between two stem cells derived from patients with two different diseases (COPD and CF). Both stem cell clones are committed to a hypersecretory fate (Goblet cell metaplasia, GCM)

# File Organization

The file *gcm-sra.sh* is for downloading the original FASTQ files from NCBI SRA.
***gcm-trimming*** is used for trimming the Illumina adaptor sequences from each file, producing the trimmed FASTQ's for alignment. 

***gcm-alignment2.sh*** Utilizes HISAT2 with the UCSC reference genome.

***gcm-sam-bam.sh*** Converts the SAM file output to BAM, and sorts the BAM file.

***gcm-annotate-ucsc.sh*** Adds gene ID's and annotation for the UCSC format.

The remaining annotation, gene counts tables, and visualization analysis are done in RStudio

All repositories are breakfast-themed.
