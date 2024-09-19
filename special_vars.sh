#!/bin/bash
echo "The name of the script is : $0"


#Display the first nine arguments(special variable $0)
echo "First argument :$1"
echo "Second argument :$2"
echo "Third argument :$3"
echo "Fourth argument is :$4"
echo "Fifth argument is :$5"
echo "Sixth argument is :$6"
echo "Seventh argument is :$7"
echo "Eighth argument is :$8"
echo "Ninth argument is :$9"

#Display the total number of argmunets passed(Special variable $#)
echo "Number of arguments passed is $#"


#Display the exit status of the last run command (spcial variable $?)
echo "The exit status of the last command is: $?"

#Display the process ID of the current script(special variable $$)
echo "The process ID of the script is: $$"

#Exit the script with a status of 0(sucess)
exit 0


