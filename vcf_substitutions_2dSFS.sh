#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/fastas
#SBATCH -J vcf_substitutions_2dSFS
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=48:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/vcf_substitutions_2dSFS.out
#SBATCH -e /global/home/users/peter_stokes/vcf_substitutions_2dSFS.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load bio/vcftools/0.1.15
module load htslib/1.6

export PERL5LIB=/clusterfs/vector/home/groups/software/sl-6.x86_64/modules/vcftools/0.1.13/perl/

cat HanXRQr1.0-20151230_ch01_to_17.fasta | vcf-consensus substitution2dSFS_vcf.vcf.gz > 2dSFS_SUBSTITUTIONS.fa