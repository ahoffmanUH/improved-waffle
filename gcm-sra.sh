#!/bin/bash

#SBATCH -t 1-00:01 # total requested time the job may run in D-HH:MM
#SBATCH --cpus-per-task=4 # requests 4 threads/cpus per task. You can also set ntasks, but by default it is 1
#SBATCH --mem=10Gb # specify the amount of memory to request for the job
#SBATCH --output=%x.%j.out #output file name

#please use no more than 5 threads (--cpus-per-task=5) and 15 Gb of memory (--mem=15Gb)
module load sratoolkit/3.0.7

fasterq-dump SRR7905008 SRR24750967 -O /project/stuckert/ahoffman/gcm_clones/

