#!/bin/zsh
# Create output directory if not exist
out_dir="../attachments"
mkdir -p "$out_dir"

# List all .eml files and extract
for f in ../raw/**/*.eml
do
  echo "Extracting file: $f..."
  python extract_attachments.py "$f" "$out_dir"
done