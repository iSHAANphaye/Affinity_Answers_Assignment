#!/bin/bash

url="https://www.amfiindia.com/spages/NAVAll.txt"

temp_file="NAVAll.txt"
output_file="output.csv"
temp_file=$(mktemp)

curl -s "$url" > "$temp_file"
awk -F ';' 'NR > 3 {print $4 "," $5}' "$temp_file" | sed '1s/^/Scheme name,Net asset value\n/' > "$output_file"
rm "$temp_file"
