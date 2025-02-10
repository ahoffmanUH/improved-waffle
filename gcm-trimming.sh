#!/bin/bash
#SBATCH -t 1-00:00 # total requested time the job may run in D-HH:MM
#SBATCH --cpus-per-task=4 # requests 4 threads/cpus per task. You can also set ntasks, but by default it is 1
#SBATCH --mem=10Gb # specify the amount of memory to request for the job
#SBATCH --output=%x.%j.out #output file name

#Use trimmomatic to remove Illumina Nextera adaptor sequences
#first samples
#the following is sample code used as a practice from class. The same pipeline was applied to future data downloads and updates
java -jar /project/stuckert/ahoffman/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 -threads 5 -baseout SRR24750967_TRIM.fastq SRR24750967_1.fastq SRR24750967_2.fastq LEADING:3 TRAILING:3 ILLUMINACLIP:/project/stuckert/bioinformatics/lab7/barcodes.fa:2:30:10:8:TRUE MINLEN:25

java -jar /project/stuckert/ahoffman/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 -threads 5 -baseout SRR7905008_TRIM.fastq SRR7905008_1.fastq SRR7905008_2.fastq LEADING:3 TRAILING:3 ILLUMINACLIP:/project/stuckert/bioinformatics/lab7/barcodes.fa:2:30:10:8:TRUE MINLEN:25


