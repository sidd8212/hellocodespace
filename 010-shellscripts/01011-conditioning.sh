#!/bin/bash
# always directs to the shell   /bin/bash
echo 'test.sh'

// example of the if conditions 
i=3
# shell if stement
if [ $i -gt 2 ]
then
    ls -lrt /home
else
    echo 'else'
fi


