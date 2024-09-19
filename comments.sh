#!/bin/bash

: <<'COMMENT'
The read command reads input from the keyboard and assigns it to a variable. The -n option specifies the number of characters to read. In this case, the -n 3 option specifies that the read command should read only three characters. The -p option is used to display a prompt before reading input. 
The code variable is used to store the input read by the read command. 
The echo command is used to display the value of the code variable.
Anything i write is a comment .Fuck you and your feelings
COMMENT

#now let's ask the user for some input
echo "Enter a number: "
read -n 3 -p "Enter a number: " code
echo "You entered: $code"  # You entered: 123