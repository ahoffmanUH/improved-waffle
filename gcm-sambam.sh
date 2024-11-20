#!/bin/bash
#SBATCH --cpus-per-task=4 # requests 4 threads/cpus per task. You can also set ntasks, but by default it is 1
#SBATCH --mem=12Gb # specify the amount of memory to request for the job; in theory HISAT2 should require only 6.5 Gb
#SBATCH --output=cf-copd-alignment.out #output file name

#COPD conversion sam2bam
/project/stuckert/ahoffman/samtools-1.3.1/samtools view -bS $(pwd)/COPDalignment.sam > $(pwd)/COPDalignment.bam

#CF conversion sam2bam
/project/stuckert/ahoffman/samtools-1.3.1/samtools view -bS $(pwd)/CFalignment.sam > $(pwd)/CFalignment.bam

#convert bam file to sorted bam
/project/stuckert/ahoffman/samtools-1.3.1/samtools sort COPDalignment.bam -o sorted-COPDalignment.bam
/project/stuckert/ahoffman/samtools-1.3.1/samtools sort CFalignment.bam -o sorted-CFalignment.bam

#move to Stringtie
#/project/stuckert/ahoffman/stringtie/stringtie -G /project/stuckert/ahoffman/refgenome/Homo_sapiens.GRCh38.113.gtf -o cf-copd-aligned.gtf sorted-newAlignment.bam 
