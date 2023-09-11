conda activate /cluster/projects/nn8021k/Conda-env/metaphlan4
metaphlan --bowtie2db /cluster/projects/nn8021k/Databases/Metaphlan4_database\ 
PATH_TO_CONCATENATED_FORWARD_AND_REVERSE_READS\ 
--offline --bowtie2out\ 
PATH_TO_BOWTIE_OUTPUT\ 
-t rel_ab_w_read_stats --unclassified_estimation --nproc 5 --input_type fastq > PATH_TO_OUTPUTFILE
