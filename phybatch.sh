#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 12:00:00
#SBATCH -J job_name
#SBATCH --mail-type=ALL
#SBATCH --mail-user praissy.zefi-j.1839@student.uu.se
source ~/.bashrc

# Load modules
module load conda
export CONDA_ENVS_PATH=~/genome_analysis/DNA/envs
source conda_init.sh

source activate phylophlan

#commands 
output=/home/prze1839/genome_analysis/DNA/Phylophlan
configs=~/genome_analysis/DNA/envs/configs

cd $outdir

phylophlan -i /home/prze1839/genome_analysis/DNA/Phylophlan/prokka_files -d phylophlan --diversity high --min_num_entries 1 -f $configs/supermatrix_aa.cfg

