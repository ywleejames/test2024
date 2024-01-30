#! /bin/bash
exec < filename.csv
read header
while IFS="," read -r filename_from filename_to
do
	echo "Filename From: $filename_from" 
	echo "Filename To: $filename_to"
	echo ""
        mv $filename_from $filename_to
done
