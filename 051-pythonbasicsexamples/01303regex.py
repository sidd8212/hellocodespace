#python create a regular expression 
# import the regular expression module
import re
# create a regular expression
# re.compile(pattern, flags=0)
# pattern: the regular expression to be compiled
# flags: optional, specifies different regex syntax
# re.I: ignore case

# create a regular expression
regex = re.compile(r'([a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+)', re.I)
# create a string to search
string = "Please contact us at: stationc gmail dot com"
# search the string for a match
match = regex.search(string)
# print the match
print(match)
# print the match group


