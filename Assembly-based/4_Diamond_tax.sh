module load DIAMOND/2.1.6-GCC-11.3.0

diamond blastp --db PATH_TO_DATABASE --query PATH_TO_PROTEIN --out PATH_TO_OUTPUT --outfmt 6 qseqid qlen sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore staxids sscinames  --evalue 0.00001 --threads 64 --id 95 --query-cover 95 --fast --max-target-seqs 1
