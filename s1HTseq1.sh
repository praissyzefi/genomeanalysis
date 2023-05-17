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
module load samtools
module load htseq

# Your commands
gff_file_dir=/home/prze1839/genome_analysis/DNA/Prokka/bacteria/gff_files
bam_file_dir=/home/prze1839/genome_analysis/DNA/Mapping_Analysis/sorted_bins/s1_sorted_bins
out_dir=/home/prze1839/genome_analysis/DNA/Read_Counting

for gff in $gff_file_dir/*.gff
do
        sed '/^##FASTA/Q' $gff > $gff.nofa
done

for bin in b1 b2 b3 b4 b5 b6;
do
        htseq-count -f bam -r pos -t CDS -i ID --stranded=no $bam_file_dir/s1_sorted_${bin}.bam $gff_file_dir/${bin}.gff.nofa > $out_dir/${bin}_count_s1.out
done


