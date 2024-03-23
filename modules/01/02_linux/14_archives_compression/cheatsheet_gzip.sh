# To create a *.gz compressed file
gzip test.txt

# To create a *.gz compressed file to a specific location using -c option (standard out)
gzip -c test.txt > test_custom.txt.gz

# To uncompress a *.gz file
gzip -d test.txt.gz

# Display compression ratio of the compressed file using gzip -l
gzip -l *.gz

# Recursively compress all the files under a specified directory
gzip -r documents_directory

# To create a *.gz compressed file and keep the original
gzip < test.txt > test.txt.gz

 tldr:gzip 
# gzip
# Compress/uncompress files with gzip compression (LZ77).
# More information: <https://www.gnu.org/software/gzip/manual/gzip.html>.

# Compress a file, replacing it with a gzipped compressed version:
gzip file.ext

# Decompress a file, replacing it with the original uncompressed version:
gzip -d file.ext.gz

# Compress a file, keeping the original file:
gzip --keep file.ext

# Compress a file specifying the output filename:
gzip -c file.ext > compressed_file.ext.gz

# Decompress a gzipped file specifying the output filename:
gzip -c -d file.ext.gz > uncompressed_file.ext

# Specify the compression level. 1=Fastest (Worst), 9=Slowest (Best), Default level is 6:
gzip -9 -c file.ext > compressed_file.ext.gz
