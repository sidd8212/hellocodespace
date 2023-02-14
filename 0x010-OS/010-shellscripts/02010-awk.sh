# awk command is used to process text files
# awk is a pattern scanning and processing language
# awk is a programming language designed for text processing and typically used as a data extraction and reporting tool
# awk is a command-line utility for pattern scanning and processing of text
# awk is a programming language that is used for text processing and data extraction
# awk example 
# awk command example

awk '/pattern/' path/to/file    # print lines matching pattern      
awk '!/pattern/' path/to/file   # print lines not matching pattern
awk '/pattern1/ && /pattern2/' path/to/file   # print lines matching both pattern1 and pattern2
awk '/pattern1/ || /pattern2/' path/to/file   # print lines matching either pattern1 or pattern2
awk '/pattern1/ {print $0}' path/to/file      # print lines matching pattern1 and print the whole line
awk '/pattern1/ {print $1}' path/to/file      # print lines matching pattern1 and print the first field
awk '/pattern1/ {print $2}' path/to/file      # print lines matching pattern1 and print the second field
awk '/pattern1/ {print $NF}' path/to/file     # print lines matching pattern1 and print the last field
awk '/pattern1/ {print $NF-1}' path/to/file   # print lines matching pattern1 and print the second last field
awk '/pattern1/ {print $0}' path/to/file | wc -l   # print lines matching pattern1 and print the whole line and count the number of lines
awk '/pattern1/ {print $0}' path/to/file | sort    # print lines matching pattern1 and print the whole line and sort the lines
awk '/pattern1/ {print $0}' path/to/file | sort | uniq   # print lines matching pattern1 and print the whole line and sort the lines and remove duplicates
awk '/pattern1/ {print $0}' path/to/file | sort | uniq -c   # print lines matching pattern1 and print the whole line and sort the lines and remove duplicates and count the number of lines
awk '/pattern1/ {print $0}' path/to/file | sort | uniq -c | sort -nr   # print lines matching pattern1 and print the whole line and sort the lines and remove duplicates and count the number of lines and sort the lines in descending order
awk '/pattern1/ {print $0}' path/to/file | sort | uniq -c | sort -nr | head -n 10   # print lines matching pattern1 and print the whole line and sort the lines and remove duplicates and count the number of lines and sort the lines in descending order and print the top 10 lines


