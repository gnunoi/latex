#!/bin/bash

# Usage function
usage() {
    echo "Usage: $0 <input_file> <output_file>"
    echo
    echo "This script extracts the content between \\begin{tikzpicture} and \\end{tikzpicture}"
    echo "from the specified input file and writes it to the specified output file."
    echo
    echo "Parameters:"
    echo "  <input_file>   The LaTeX file containing the TikZ content."
    echo "  <output_file>  The file where the extracted content will be saved."
    exit 1
}

# Check if the number of arguments is less than 2
if [ $# -lt 2 ]; then
    usage
fi

# Input and Output files from arguments
input_file="$1"
output_file="$2"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: The input file '$input_file' does not exist."
    exit 1
fi

# Use sed to extract content and write to the output file
sed -n '/\\begin{tikzpicture}/, /\\end{tikzpicture}/p' "$input_file" > "$output_file"

echo "Content extracted and saved to '$output_file'."

