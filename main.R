# AD-Scripting, Astrid Bos & David Scholte-Albers
# 07 January 2014

# Start with empty environment
rm(list=ls())

# Import packages
##not applicable in this case

# Source functions
source("R/is.leap.R")

# Load datasets 
##not applicable in this case

# Then the actual commands
#Test cases

#Test case 1
#Should return error: "argument of class numeric expected"
is.leap("john")

#Test case 2
#Should return "1120 is out of the valid range"
is.leap(1120)

#Test case 3
#Should return False
is.leap(1997)

#Test case 4
#Should return True
is.leap(2000)