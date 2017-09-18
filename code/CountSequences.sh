#!/bin/bash

# Charlotte
# clopp@dons.usfca.edu	
# September 9, 2017
# Creating bash file that will count number of sequences in an arbitrary number of fasta files

for file in $@
do
	echo "The file $file has `grep -c "^>" $file` sequences in it."
done
