#!/bin/bash

# Charlotte Lopp
# clopp@dons.usfca.edu
# September 9, 2017
# A bash code setting up the directory infrastructure for this project

# Making directory and file structure
cd CharlotteLopp-week03-homework-git
mkdir code data output data/raw_data output/figures output/tables
echo "Made project infrastructure" 

# Download fasta files from the internet and unzip them
cd data/raw_data
curl -L http://npk.io/PUlBaY+ -o fasta-archive.zip
unzip fasta-archive.zip
mv *.fasta ../data
cd data/raw_data
rm fasta-archive.zip
mv *.fasta data/raw_data
echo "Downloaded fasta files and deleted unzipped archive"

#Adding .gitkeep files in any empty directories 
cd ../
cd ../
touch code/.gitkeep
touch output/figures/.gitkeep
touch output/tables/.gitkeep
echo "Added .gitkeep files to any empty directories" 
