#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/ANGSD_bams_wild/outs
#SBATCH -J vcf_tools
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=48:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/vcf_tools.out
#SBATCH -e /global/home/users/peter_stokes/vcf_tools.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15

vcftools --gzvcf angsd_wild.vcf.gz --freq --counts --out VCF_W_analysis