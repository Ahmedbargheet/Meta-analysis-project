#This is for resistome

conda activate /cluster/projects/nn8021k/Conda-env/shortbred
shortbred_quantify.py --markers /cluster/projects/nn8021k/Databases/CARD_327/markers_shortbred/CARD_markers.faa\ 
--id .95 --pctlength .95 --threads 16\ 
--wgs PATH_TO_FORWARD_READS\ 
PATH_TO_REVERSE_READS\ 
--results PATH_TO_OUTPUTFILE\ 
--tmp PATH_TO_TEMP_DIRECTORY


##############################################################
This is for mobilome

conda activate /cluster/projects/nn8021k/Conda-env/shortbred
shortbred_quantify.py --markers /cluster/projects/nn8021k/Databases/CARD_327/markers_shortbred_MGE_1/mobile_OG_markers.faa\ 
--id .95 --pctlength .95 --threads 16\ 
--wgs PATH_TO_FORWARD_READS\ 
PATH_TO_REVERSE_READS\ 
--results PATH_TO_OUTPUTFILE\ 
--tmp PATH_TO_TEMP_DIRECTORY