#!/bin/bash
#create a function to check if the file test.txt exists
check_file() {
  if [ -f test.txt ]; 
  then
    echo "File test.txt exists"
       #check if the file contains the string "Healthy"
       if grep -q "Healthy" test.txt; then
         echo "The file contains the string 'Healthy'"
  else
    echo "The file does not exist"
    touch test.txt
  fi 

}

 
#call the function check_file
check_file   
