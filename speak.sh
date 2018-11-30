#!bin/bash
mkdir $2
for filename in $1/*.txt; do
	wav_filename=$(basename "$filename" .txt)".wav"
	python ./scripts/speak.py -l english -s zs19_data -o $2/$wav_filename naive_01_nn $filename
done
