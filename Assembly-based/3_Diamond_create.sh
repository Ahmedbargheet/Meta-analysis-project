module load DIAMOND/2.1.6-GCC-11.3.0

diamond makedb --in PATH_TO_DATABASE --taxonmap PATH_TO_prot.accession2taxid --taxonnodes PATH_TO_tax/nodes.dmp --taxonnames PATH_TO_names.dmp -d PATH_TO_OUTPUT/databasename