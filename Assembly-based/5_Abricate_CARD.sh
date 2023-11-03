source /cluster/software/Miniconda3/22.11.1-1/etc/profile.d/conda.sh
conda activate /cluster/projects/nn8021k/Conda-env/Abricate

abricate PATH_TO_CONTIG_FILES -db card --threads 16 --minid 80 --mincov 80 > PATH_TO_OUTPUT
