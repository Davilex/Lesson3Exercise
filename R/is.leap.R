#Function to check if a year is a leap year.
is.leap <- function(year) {
  if (!is.numeric(year)) {
    stop("argument of class numeric expected")
  } else if (year < 1582) {
    outcome <- paste(year, "is out of the valid range", sep=" ") 
  } else if (year %% 400 == 0){
    outcome <- T
  } else if (year %% 100 == 0) {
    outcome <- F
  } else if (year %% 4 == 0) {
    outcome <- T
  } else {
    outcome <- F
  } 
    return(outcome)
}