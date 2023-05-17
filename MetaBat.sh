#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J 01_metabat2
#SBATCH --mail-type=ALL
#SBATCH --mail-user praissy.zefi-j.1839@student.uu.se

# Load modules
module load bioinfo-tools
module load MetaBat

# Your commands
contigs=/home/prze1839/genome_analysis/DNA/megahit_2129_and_2133_output
output=/home/prze1839/genome_analysis/DNA
metabat2 -t 2 -i ${contigs}/final.contigs.fa -o ${output}/metabat2_results
