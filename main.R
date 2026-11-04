#This R script will serve as the integration script for the following
#parts(codes): 1. calculate_bmi, 2. categorize_bmi, 3.bmi_for_loop,
#4.bmi_while_loop


# ---- Part 3 ----
categorize_bmi <- function(weight, height) {
  bmi2 <- calculate_bmi(weight, height)
  if (bmi2 < 18.5) {
    category <- "Underweight"
  } else if (bmi2 >= 18.5 & bmi2 <= 25) {
    category <- "Normal weight"
  } else if (bmi2 > 25 & bmi2 <= 30) {
    category <- "Overweight"
  } else {
    category <- "Obese"
  }
  return(paste("BMI:", round(bmi2, 2), "-", category))
}

categorize_bmi(170, 63)

# End Part 3