#This R script will serve as the integration script for the following
#parts(codes): 1. calculate_bmi, 2. categorize_bmi, 3.bmi_for_loop,
#4.bmi_while_loop

#=======
##GH: Part 1: #weight in lbs and height in inches
  calculate_bmi <- function(weight, height) {
    bmi <- weight*703 / (height^2)
    return(bmi)
  }

#=======
#NB: Part 2
calculate_bmi(170, 63)

#=======
  ## part 5: # add the BMI value to the data
  patients$bmi <- calculate_bmi(patients$weight, patients$height)
  # Using the mapply() function
  patients$bmi_cat <- mapply(categorize_bmi, patients$weight, patients$height)
 main

#======
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
# Part 7
 
 #refreshing the patients data, and creating a for loop that will use both calculate bmi and categorize bmi to store this values to the patient data. show the first few obs of the dataset
 
 patients <- data.frame(
   
   weight = c(140, 170, 120, 190, 200),
   
   height = c(65, 63, 40, 80, 70)
   
 )
 
 patients$bmi <- NA_real_
 
 patients$bmi_cat <- NA_character_
 
 for (i in 1:nrow(patients)) {
   
   patients$bmi[i] <- calculate_bmi(
     
     patients$weight[i],
     
     patients$height[i]
     
   )
   
   patients$bmi_cat[i] <- categorize_bmi(
     
     patients$weight[i],
     
     patients$height[i]
     
   )
   
 }