#!/bin/bash

# Each and every action in Linux will have a exit code 
# 0 to 255 is the range of the codes
# Among all , 0 represents action completed successfully
# Anything in between 1 to 255 represents either partial success, partial failure, complete failure.

# 0             : Global success
# 1 to 125      : Some failure from the command
# 125+          : System failure


# Exit code also plays a key role in debugging big scripts

# Ex: If you're having abig script and your script fails and it's really challenging to figure out the mistakes as it makes us to watch over the entire
# Instead, we can use exit codes everywhere to find out where our script fails.

