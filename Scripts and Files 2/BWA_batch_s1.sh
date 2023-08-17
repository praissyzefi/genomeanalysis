#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 12:00:00
#SBATCH -J job_BWA
#SBATCH --mail-type=ALL
#SBATCH --mail-user praissy.zefi-j.1839@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa 

# Your commands
bins=/home/prze1839/genome_analysis/DNA/Prokka/bacteria/fna_files
trimmed_RNA=/home/prze1839/genome_analysis/RNA
output=/home/prze1839/genome_analysis/DNA/Mapping_Analysis

bwa index $bins/metabat2_results1.fna
bwa mem -t 2 $bins/metabat2_results1.fna $trimmed_RNA/SRR4342137.1.fastq.gz $trimmed_RNA/SRR4342137.2.fastq.gz > $output/temp.sam 
samtools view -u -b $output/temp.sam > $output/tmp.bam
samtools sort $output/tmp.bam > $output/s1_sorted_b1.bam

bwa index $bins/metabat2_results2.fna
bwa mem -t 2 $bins/metabat2_results2.fna $trimmed_RNA/SRR4342137.1.fastq.gz $trimmed_RNA/SRR4342137.2.fastq.gz > $output/temp.sam
samtools view -u -b $output/temp.sam > $output/tmp.bam
samtools sort $output/tmp.bam > $output/s1_sorted_b2.bam

bwa index $bins/metabat2_results3.fna
bwa mem -t 2 $bins/metabat2_results3.fna $trimmed_RNA/SRR4342137.1.fastq.gz $trimmed_RNA/SRR4342137.2.fastq.gz > $output/temp.sam
samtools view -u -b $output/temp.sam > $output/tmp.bam
samtools sort $output/tmp.bam > $output/s1_sorted_b3.bam

bwa index $bins/metabat2_results4.fna
bwa mem -t 2 $bins/metabat2_results4.fna $trimmed_RNA/SRR4342137.1.fastq.gz $trimmed_RNA/SRR4342137.2.fastq.gz > $output/temp.sam
samtools view -u -b $output/temp.sam > $output/tmp.bam
samtools sort $output/tmp.bam > $output/s1_sorted_b4.bam

bwa index $bins/metabat2_results5.fna
bwa mem -t 2 $bins/metabat2_results5.fna $trimmed_RNA/SRR4342137.1.fastq.gz $trimmed_RNA/SRR4342137.2.fastq.gz > $output/temp.sam
samtools view -u -b $output/temp.sam > $output/tmp.bam
samtools sort $output/tmp.bam > $output/s1_sorted_b5.bam

bwa index $bins/metabat2_results6.fna
bwa mem -t 2 $bins/metabat2_results6.fna $trimmed_RNA/SRR4342137.1.fastq.gz $trimmed_RNA/SRR4342137.2.fastq.gz > $output/temp.sam
samtools view -u -b $output/temp.sam > $output/tmp.bam
samtools sort $output/tmp.bam > $output/s1_sorted_b6.bam
