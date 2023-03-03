# Name: Tee Nguyen
# GitHub: tnnguyen13
# Date: 03/03/2023
# Description:

c_to_f <- function(temp_C) {

# Converts a Celsius float parameter into Fahrenheit ----------------------

  temp_F <- (temp_C * 9 / 5) + 32
  return(temp_F)
}

output_function <- function(minValue, maxValue, intervalValue) {

# Intakes a minimum, maximum, and step value, then converts those  --------
# Outputs the data into a dataframe arranged into two columns.
  
  # initializing empty arrays
  c_array <- c()
  f_array <- c()
  
  # loop for conversion and array storage
  for (x in seq(minValue, maxValue, intervalValue)) {
    f_array <- append(f_array, round(c_to_f(x), digits=2), after=length(f_array))
    c_array <- append(c_array, x, after=length(c_array))
  }
  
  # output
  df <- data.frame(c_array,f_array)
  colnames(df) <- c("Celsius", "Fahrenheit")
  
  # header
  print("Temperature Conversion")
  
  df
}

# sample
output_function(0, 100, 20)
