# looping   : for, while, until and select  (select is not a loop)
# example of if statement
 if [ condition ]
 then
  ls -lrt /home 
  #command2
# else
#   command3
#   command4
# fi
# example of for loop

for i in 1 2 3 4 5
do
    echo "Welcome $i times"
done

# example of while loop
# while [ condition ]

i=1



while [ $i -le 5 ]
do
    echo "Welcome $i times"
    i=`expr $i + 1`
done

# example of until loop
# until [ condition ]

i=1

until [ $i -gt 5 ]

do
    echo "Welcome $i times"
    i=`expr $i + 1`
done

