#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J checkM
#SBATCH --mail-type=ALL
#SBATCH --mail-user praissy.zefi-j.1839@student.uu.se

# Load modules
module load bioinfo-tools
module load CheckM

# Your commands
bins=/home/prze1839/genome_analysis/DNA/metabat/metabat_fasta_files
output=/home/prze1839/genome_analysis/DNA/CheckM
checkm lineage_wf -t 8 -x fa --reduced_tree ${bins} ${output}

