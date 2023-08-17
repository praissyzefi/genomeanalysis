# AIM 
The project is based on the article “Metabolic Roles of uncultivated Bacterioplankton Lineages in the Northern Gulf of Mexico ‘ Dead Zone’” published on September 12th, 2017. It focuses on the ‘dead zones’ which are essentially the regions where there is a reduced eukaryotic microbiota: shrimp, fish, etc. Here, we focus on the Gulf of Mexico to extract samples that can be differentiated based on the DO ( dissolved O2 concentration). The goal of the project is to carry out the annotation of genomes to identify metabolic pathways in Carbon, Nitrogen, and Sulfur cycles and energy production in the microbial communities under study. 


## ANALYSES
The primary analyses used in the paper are 
- 1)Sequencing DNA and RNA from samples using Illumina sequencing 
- 2)Trimming and Binning of reads
- 3)Metagenome assembly
- 4)Quality check of assembly and bins 
- 5)Annotation 
- 6)Determination of phylogeny of bins 
- 7)Analysis of expression levels of factors

## METHODS AND SOFTWARE USED 
| ANALYSIS STEP	| SOFTWARE USED | INPUT DATA FORMAT | APPROXIMATE RUNNING TIME |
|------------|----------|--------|---------|
|Sequencing DNA and RNA (separately)|Illumina sequencing|Purified DNA and RNA 	|   |
|Quality control of the reads |	FastQC	| FASTQ	| ~ 15 min|
|Trimming of reads (DNA)	| Trimmomatic | - | - |	
|Quality check |	CheckM| FASTA| 	~ 2 hours |
|Metagenome assembly| Megahit	| FASTQ|~ 6 hours|
|Binning of reads |Metabat|FASTA	|~ < 30 min|  
|Annotation |Prokka|FASTA|~ 1 hour|
|Phylogenetic analysis of bins|PhyloPhlan|Genome file + Fasta file|~ 6 hours|
|Mapping/ alignment |BWA |FASTA / FASTQ| ~ 4 – 6 hours|
|Read counting	|HTSeq|	Aligned reads| -|



## TIMELINE OF THE PROJECT 
|Steps |Day | Metagenomics |
|---|---|---|
|1|29/03| Project Plan | 
|2|01/04| Quality control of reads |
|3|08/04| Trimming and binning|
|4|10/04| Quality check of the bins |
|5|15/04| Metagenome assembly | 
|6|19/04| Annotation | 
|7|22/04| Mapping/ Alignment |  
|8|26/04| Phylogenetic analysis | 
|9|26/04| Read counting | 

## PROCEDURE 
Due to the enormity of the data given, we use a subset of it. About 6 samples were obtained from hypoxic and oxic environments of the Gulf region. In these samples, we consider the Dissolved O2 concentration as the most important criterion based on which we look at the differences between the samples obtained in these regions.
In the original study, metagenomic binning recovered 20 genomes from 7 previously uncultivated lineages:
- MGII
- SAR406
- SAR202
- Parcubacteria
- Peregrinibacteria
- PAUC34F
- ACD39

## DATA ORGANIZATION 
This is the github organization of files to be followed while working on the project 
genome_analysis_paper_4
- ├── analyses
- │   ├── 1_assembly
- │   │── 2_reads_quality_control      
- │   │── 3_binning
- │   │── 4_assembly_evaluation
- │   └── 5_read_counting
- │       
- ├── code
- │   ├── 1_trimmomatic
- │   ├── 2_fastqc
- │   ├── 3_fastqc
- │   ├── 4_megahit
- │   ├── 5_metabah
- │   ├── 6_metaquast
- │   ├── 7_checkm
- │   ├── 8_prokka
- │   ├── 9_BWA
- │   └── 10_phylophlan
- ├── images
- └── data

 
