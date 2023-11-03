module load MEGAHIT/1.2.9-GCCcore-11.3.0

megahit -1 PATH_TO_FORWARD_READS\ 
-2 PATH_TO_REVERSE_READS\ 
-o PATH_TO_OUTPUT_DIRECTORY --presets meta-sensitive --continue