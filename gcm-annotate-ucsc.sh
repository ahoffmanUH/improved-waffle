#!/bin/bash
#SBATCH -t 1-00:01 # total requested time the job may run in D-HH:MM
#SBATCH --cpus-per-task=5 # requests 4 threads/cpus per task. You can also set ntasks, but by default it is 1
#SBATCH --mem=12Gb # specify the amount of memory to request for the job
#SBATCH --output=stringtie-annotation.out #output file name

#annotate COPD with sorted bam file
/project/stuckert/ahoffman/stringtie/stringtie -G /project/stuckert/ahoffman/refgenome/hg38.refGene.gtf -o copd-annotated.gtf sorted-COPDalignment.bam -e -B

#annotate CF with sorted bam file
/project/stuckert/ahoffman/stringtie/stringtie -G /project/stuckert/ahoffman/refgenome/hg38.refGene.gtf -o cf-annotated.gtf sorted-CFalignment.bam -e -B
