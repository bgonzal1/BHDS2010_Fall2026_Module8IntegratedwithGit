#This R script will serve as the integration script for the following
#parts(codes): 1. calculate_bmi, 2. categorize_bmi, 3.bmi_for_loop,
#4.bmi_while_loop


##GH: Part 1: #weight in lbs and height in inches
  calculate_bmi <- function(weight, height) {
    bmi <- weight*703 / (height^2)
    return(bmi)
  }


#NB: Part 2
calculate_bmi(170, 63)

#IRB: Part 3
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

##IB: Part 4: Creating our patient data frame
  patients <- data.frame(
    weight = c(140, 170, 120, 190, 200), 
    height = c(65, 63, 40, 80, 70)
  )

## part 5: # add the BMI value to the data
  patients$bmi <- calculate_bmi(patients$weight, patients$height)
  # Using the mapply() function
  patients$bmi_cat <- mapply(categorize_bmi, patients$weight, patients$height)
 main
