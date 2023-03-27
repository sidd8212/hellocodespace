: comment in dos files is a semicolon

: this is a comment
REM this is a comment note there is no semiciolon
REM: REM is used to comment out a line in a batch file

REM echo command is used to display text on the screen
echo Hello World

: storing the output of a command in a variable
set /p var=Enter your name:     
REM /p is used to prompt the user for input

: print the value of the variable
echo %var%

: pause command is used to pause the execution of the batch file for a while like  a key press
pause 

: exit command is used to exit the batch file
exit

: goto command is used to jump to a label in the batch file
: goto label
: label:
: goto label

: looping in batch files 
: for loop
for /l %%i in (1,1,10) do echo %%i

: while loop
set /p var=Enter a number:
: while condition do command
while %var% gtr 0 do (
    echo %var%
    set /p var=Enter a number:
)

: do while loop
set /p var=Enter a number:
: do command while condition
do (
    echo %var%
    set /p var=Enter a number:
) while %var% gtr 0

: if else statement
set /p var=Enter a number:
if %var% gtr 0 (
    echo %var% is greater than 0
) else (
    echo %var% is less than 0
)

: if else if else statement
set /p var=Enter a number:
if %var% gtr 0 (
    echo %var% is greater than 0
) else if %var% equ 0 (
    echo %var% is equal to 0
) else (
    echo %var% is less than 0
)


: switch statement
set /p var=Enter a number:
switch %var% (
    case 1 (
        echo %var% is 1
    )
    case 2 (
        echo %var% is 2
    )
    case 3 (
        echo %var% is 3
    )
    case 4 (
        echo %var% is 4
    )
    case 5 (
        echo %var% is 5
    )
    case 6 (
        echo %var% is 6
    )
    case 7 (
        echo %var% is 7
    )
    case 8 (
        echo %var% is 8
    )
    case 9 (
        echo %var% is 9
    )
    case 10 (
        echo %var% is 10
    )
    default (
        echo %var% is not between 1 and 10
    )
)


: calling a batch file from another batch file
call batch_file_name

: list all the files in a directory
dir
