# Name: Tee Nguyen
# GitHub: tnnguyen13
# Date: 03/03/2023
# Description:

c_to_f <- function(temp_C) {
  temp_F <- (temp_C * 9 / 5) + 32
  return(temp_F)
}

output_function <- function(minValue, maxValue, intervalValue) {
  counter <- 0
  c_array <- c()
  f_array <- c()
  for (x in seq(minValue, maxValue, intervalValue)) {
    f_array <- append(f_array, round(c_to_f(x), digits=2), after=length(f_array))
    c_array <- append(c_array, x, after=length(c_array))
    counter <- counter + 1
  }
  df <- data.frame(c_array,f_array)
  
  colnames(df) <- c("Celsius", "Fahrenheit")
  print("Temperature Conversion")
  df
}

output_function(0, 100, 20)
