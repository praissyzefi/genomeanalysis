#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 12:00:00
#SBATCH -J job_name
#SBATCH --mail-type=ALL
#SBATCH --mail-user praissy.zefi-j.1839@student.uu.se

# Load modules
module load bioinfo-tools
module load quast

# Your commands
#input=/home/prze1839/genome_analysis/DNA/megahit
#output=/home/prze1839/genome_analysis/DNA/MetaQuast_results

metaquast.py -t 2 /home/prze1839/genome_analysis/DNA/megahit/final.contigs.fa -o /home/prze1839/genome_analysis/DNA/MetaQuast_results/assembly_evaluation --max-ref-num 0


