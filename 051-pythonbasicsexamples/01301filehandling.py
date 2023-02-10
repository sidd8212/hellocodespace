import os
# print the current working directory

print(os.getcwd())


def readfileandprintcontents():
    # open the file in read mode
    file = open("000-resources/datafiles/test.txt", 'r')
    # read the contents of the file
    content = file.read()
    # print the contents of the file
    print(content)
    # close the file
    file.close()
    # code to read the file and print the contents

def writefileandprintcontents(fulltext):
    # open the file in write mode
    file = open("000-resources/datafiles/test.txt", 'w')
    # write the contents to the file
    file.write(fulltext)
    # close the file
    file.close()
    # code to write the file and print the contents

def appendfileandprintcontents(text):
    # open the file in append mode
    file = open("000-resources/datafiles/test.txt", 'a')
    # append the contents to the file
    file.write(text)
    # close the file
    file.close()
    # code to append the file and print the contents

readfileandprintcontents()
writefileandprintcontents("This is a test file\n")
appendfileandprintcontents("Appended this  is a test file\n")
readfileandprintcontents()