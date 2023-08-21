module load FastQC/0.11.9-Java-11
for i in PATH_TO_Short_reads/*.fastq.gz
do
        fastqc -o PATH_TO_OUTPUT_DIRECTORY/ $i
done
