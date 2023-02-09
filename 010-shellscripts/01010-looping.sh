#!/bin/bash

# looping   : for, while, until and select  (select is not a loop)

echo 'for loop example'
for i in 1 2 3 4 5
do
    echo "for  $i times"
done

# example of while loop
# while [ condition ]



echo 'while loop example'
i=1
while [ $i -le 5 ]
do
    echo "while $i times"
    i=`expr $i + 1`
done

# example of until loop
# until [ condition ]

i=1

until [ $i -gt 5 ]

do
    echo "until $i times"
    i=`expr $i + 1`
done 
