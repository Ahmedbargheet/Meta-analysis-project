#!/bin/sh
#SBATCH --job-name=fastqc
#SBATCH --account=nn8021k
#SBATCH --time=08:30:00
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=8
#SBATCH --mem=50G
#SBATCH --output=slurm-%j.base