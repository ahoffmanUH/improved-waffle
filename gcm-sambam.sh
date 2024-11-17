#!/bin/bash
#SBATCH --cpus-per-task=4 # requests 4 threads/cpus per task. You can also set ntasks, but by default it is 1
#SBATCH --mem=10Gb # specify the amount of memory to request for the job; in theory HISAT2 should require only 6.5 Gb
#SBATCH --output=sambam-alignment3.out #output file name

/project/stuckert/ahoffman/samtools-1.3.1/samtools view -bS $(pwd)/alignment3.sam > $(pwd)/alignment3.bam

#convert bam file to sorted bam
/project/stuckert/ahoffman/samtools-1.3.1/samtools sort alignment3.bam -o alignment3sorted.bam
