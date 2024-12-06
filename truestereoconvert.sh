#!/bin/sh
# Batch script to convert all stereo WAV, FLAC, and AIFF files to true stereo (LRLR)

if [ "$#" -eq 0 ]; then
  echo "Usage: ./truestereoconvert.sh *.wav *.flac *.aiff"
  exit 1
fi

for file in "$@"; do
  extension="${file##*.}"
  
  if [ "$extension" = "wav" ] || [ "$extension" = "flac" ] || [ "$extension" = "aiff" ]; then
    echo "Converting '$file' to true stereo (LRLR) format..."
    output="${file%.*}_LRLR.${extension}"
    sox "$file" "$output" remix 1 2 1 2
    echo "Done: '$output'"
  else
    echo "Skipping unsupported file type: '$file'"
  fi
done

echo "Conversion complete!"

