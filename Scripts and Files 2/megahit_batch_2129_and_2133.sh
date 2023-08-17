#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J 01_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user praissy.zefi-j.1839@student.uu.se

# Load modules
module load bioinfo-tools
module load megahit

# Your commands
megahit -1  SRR4342129_1.paired.trimmed.fastq.gz,SRR4342133_1.paired.trimmed.fastq.gz  -2 SRR4342129_2.paired.trimmed.fastq.gz,SRR4342133_2.paired.trimmed.fastq.gz -o megahit_2129_and_2133_output --kmin-1pass --k-list 21 

