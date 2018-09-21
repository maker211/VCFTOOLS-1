#!/bin/bash 
#SBATCH -D /global/scratch/users/peter_stokes/ANGSD/non-practice/angsd/bams/vcf_test
#SBATCH -J vcf_test
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=24:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/vcf_test.out
#SBATCH -e /global/home/users/peter_stokes/vcf_test.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
module load htslib/1.6

export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

cat testFasta.fa | vcf-consensus test.vcf.gz > testFasta_subbed.fa