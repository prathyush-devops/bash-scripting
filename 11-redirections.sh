#!/bin/bash

# Redirections are of two types in bash
#       1) Input Redirector     ( Means take input from the file )      :  < ( Ex : suso mysql </tmp/studentapp.sql )
#       2) Output Redirector    ( Means routing the output to a file )  :  > or 1>   >> ( >> appends the latest output to the exising content )


# Outputs
    # 1) Standard Output                          > or >> 1>
    # 2) Standard Error                           2> or 2>>
    # 3) Standard Output or Standard Error        &> or &>>

    # ls -ltr     > output.txt    # Redirects the output to output.txt
    # ls -ltr     >> output.txt   # Redirects and appends output to output.txt
    # ls -ltr     2> output.txt   # Redirects the error only to output.txt
    # ls -ltr     &> output.txt   # Redirects the output or error to output.txt

    exit 1  

    echo hi
    