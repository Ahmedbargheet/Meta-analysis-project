module load Trimmomatic/0.39-Java-11
java -jar /cluster/software/Trimmomatic/0.39-Java-11/trimmomatic-0.39.jar\ 
PE -phred33\ 
-threads 8\ 
PATH_TO_FORWARD_READS\ 
PATH_TO_REVERSE_READS\ 
PATH_TO_TRIMMED_READS_R1\ 
PATH_TO_SINGLE_END_READS_R1\ 
PATH_TO_TRIMMED_READS_R2\ 
PATH_TO_SINGLE_END_READS_R2\ 
ILLUMINACLIP:/cluster/projects/nn8021k/TRIMMOMATIC/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36