# sed example
# sed is a stream editor
# sed is a non-interactive command-line text editor
sed 's/pattern1/pattern2/' path/to/file   # replace pattern1 with pattern2
sed 's/pattern1/pattern2/g' path/to/file  # replace pattern1 with pattern2 globally
sed 's/pattern1/pattern2/2' path/to/file  # replace pattern1 with pattern2 for the second occurrence
sed 's/pattern1/pattern2/2g' path/to/file # replace pattern1 with pattern2 for the second occurrence globally
sed 's/pattern1/pattern2/2i' path/to/file # replace pattern1 with pattern2 for the second occurrence and insert the new line before the line
