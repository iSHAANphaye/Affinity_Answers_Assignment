#!/bin/bash

# Set the URL to fetch data from
url="https://www.amfiindia.com/spages/NAVAll.txt"

temp_file="NAVAll.txt"
output_file="output.csv"

# Fetch data from the URL and save it to a temporary file
temp_file=$(mktemp)
curl -s "$url" > "$temp_file"

# Extract Scheme Name and Net Asset Value fields
awk -F ';' 'NR > 3 {print $4 "," $5}' "$temp_file" | sed '1s/^/Scheme name,Net asset value\n/' > "$output_file"

# Delete the temporary file
rm "$temp_file"

# Print a message indicating that the script has completed
echo "Data extraction complete. Results saved to $output_file."
