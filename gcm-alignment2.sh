#!/bin/bash
#SBATCH -t 1-00:01 # total requested time the job may run in D-HH:MM
#SBATCH --cpus-per-task=5 # requests 4 threads/cpus per task. You can also set ntasks, but by default it is 1
#SBATCH --mem=12Gb # specify the amount of memory to request for the job; in theory HISAT2 should require only 6.5 Gb
#SBATCH --output=alignmenttest-final.out #output file name

#indices for alignment created with hisat2-build
#see refgenome-build.sh and refgenomeBuild-test.out for reference genome construction

#align paired end reads to refgenome .ht2 files in 'genomes'
#phred33= standard Illumina quality score is in Phred33 format
#summary stats needed to assess alignment quality
#use default parameters for mismatch (mx = 6, min = 2), read gap (5,3), and reference gap (5,3)

#COPD alignment
/project/stuckert/ahoffman/hisat2/hisat2 --phred33 --dta -x /project/stuckert/ahoffman/refgenome/genomes/genome -1 $(pwd)/SRR7905008_TRIM_1P.fastq -2 $(pwd)/SRR7905008_TRIM_2P.fastq -S COPDalignment.sam --summary-file COPD-alignment_summarystats.txt

#CF alignment
/project/stuckert/ahoffman/hisat2/hisat2 --phred33 --dta -x /project/stuckert/ahoffman/refgenome/genomes/genome -1 $(pwd)/SRR24750967_TRIM_1P.fastq -2 $(pwd)/SRR24750967_TRIM_2P.fastq -S CFalignment.sam --summary-file CF-alignment_summarystats.txt
