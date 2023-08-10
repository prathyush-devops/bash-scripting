#!/bin/bash

# Each and every color you see on terminal will have a color code and we need to use that code based on our need.


# Color	Foreground Code 	Background Code
# Black	       30	            40
# Red	           31	            41
# Green	       32	            42
# Yellow	       33	            43
# Blue	       34	            44
# Magenta	       35	            45
# Cyan	       36	            46

# SYNTAX TO PRINT COLOR TEXT IS :
# Ex :
# echo -e "\e[COLORCODEm your message to be printed in color \e[0m"
# echo -e "\e[34m I am printing BLUE color \e[0m"

# To print something with background + foreground color , here is the syntax:
# Ex : 
# echo -e "\e[backgroundcode;foregroundcodem your message \e[0m"

echo -e "\e[34m I am printing BLUE color \e[0m"

# Background + foreground colors
echo -e "\e[42;34m I am printing both the colors \e[0m"
