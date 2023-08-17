#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J job_name
#SBATCH --mail-type=ALL
#SBATCH --mail-user praissy.zefi-j.1839@student.uu.se

# Load modules
module load bioinfo-tools
module load prokka

# Your commands
output=/home/prze1839/genome_analysis/DNA/Prokka_results
input=/home/prze1839/genome_analysis/DNA/metabat_fasta_results

prokka --outdir ${output}/bacteria/Prokka_results4 --prefix metabat2_results ${input}/metabat2_results.4.fa
 
