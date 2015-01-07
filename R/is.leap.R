#Function to check if a year is a leap year.
is.leap <- function(year) {
  # check if input is a number
  if (!is.numeric(year)) {
    stop("argument of class numeric expected")
  
  # check if input year is before 1582, which is when the Gregorian calender was first used
  } else if (year < 1582) {
    outcome <- paste(year, "is out of the valid range", sep=" ") 
  
  # check if input year is divisible by 400, then it is a leap year
  } else if (year %% 400 == 0){
    outcome <- T
    
  # check if input year is divisible by 100, then it is a common year
  } else if (year %% 100 == 0) {
    outcome <- F
    
  # check if input year is divisible by 4, then it is a leap year    
  } else if (year %% 4 == 0) {
    outcome <- T
    
  # otherwise, the input year is a common year
  } else {
    outcome <- F
  } 
    return(outcome)
}