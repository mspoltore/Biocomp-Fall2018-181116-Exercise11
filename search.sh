# Script for searching the transporter gene
# Usage: bash search.sh

# This line will generate an HMM profile for the transporter gene 
../local/bin/hmmbuild transporterHMM.txt transporterAlligned.fasta

# For loop to perform the searches
for name in Arthrobacter Bacillus Clostridium Flavobacterium Limnohabitans Rhizobium Roseobacter Verrucomicrobia
do

# Perform HMM Search using each of the proteome against the transporter HMM profile
../local/bin/hmmsearch --tblout ${name}Out.txt transporterHMM.txt ${name}.fasta

# These two lines will put the proteome name and its number of matches in a text file
echo $name >> matches.txt
grep -v -c "#" ${name}Out.txt >> matches.txt

done
