# Load necessary modules
export LMOD_DISABLE_SAME_NAME_AUTOSWAP=no
module load Bowtie2/2.4.5-GCC-11.3.0
module load SAMtools/1.17-GCC-12.2.0
module load BEDTools/2.30.0-GCC-11.2.0

# Path to your input and output directories
INPUT_FORWARD=path_to_forward_reads
INPUT_REVERSE=path_to_reverse_reads
HUMAN_DB_PATH=/cluster/projects/nn8021k/Databases/Human_database/Human
OUTPUT_DIR=path_to_output_directory

# Step 1: Run bowtie2
bowtie2 -x $HUMAN_DB_PATH -1 $INPUT_FORWARD -2 $INPUT_REVERSE --end-to-end --very-sensitive | samtools view -bS - > "${OUTPUT_DIR}/aligned.bam"

# Step 2: Filter the BAM file to get unmapped reads
samtools view -b -f 12 -F 256 "${OUTPUT_DIR}/aligned.bam" > "${OUTPUT_DIR}/unmapped.bam"

# Step 3: Sort the unmapped BAM file
samtools sort "${OUTPUT_DIR}/unmapped.bam" -o "${OUTPUT_DIR}/unmapped_sorted.bam"

# Step 4: Convert sorted BAM back to FASTQ
bedtools bamtofastq -i "${OUTPUT_DIR}/unmapped_sorted.bam" -fq "${OUTPUT_DIR}/R1_unmapped.fq" -fq2 "${OUTPUT_DIR}/R2_unmapped.fq"

# Step 5: Gzip the FASTQ files
gzip "${OUTPUT_DIR}/R1_unmapped.fq"
gzip "${OUTPUT_DIR}/R2_unmapped.fq"

echo "Pipeline finished"
