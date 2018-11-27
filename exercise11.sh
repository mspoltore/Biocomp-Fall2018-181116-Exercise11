# Code for exercise 11 part 1

# Concatenates all four of the sporecoat sequences into one file, and passes that file to muscle,
# which performs the sequence alignment
cd /afs/nd.edu/user20/mspoltor/sporecoat
cat *.fasta > sporecoatAll.fasta
../local/bin/muscle3.8.31_i86linux64 -in sporecoatAll.fasta -out sporecoatAligned.fasta

# Essentially the same code as before, but in the transporter repo with transporter sequences
cd /afs/nd.edu/user20/mspoltor/transporter
cat *.fasta > transporterAll.fasta
../local/bin/muscle3.8.31_i86linux64 -in transporterAll.fasta -out transporterAligned.fasta 
