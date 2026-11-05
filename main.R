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


  ## part 5: # add the BMI value to the data
  patients$bmi <- calculate_bmi(patients$weight, patients$height)
  # Using the mapply() function
  patients$bmi_cat <- mapply(categorize_bmi, patients$weight, patients$height)
 main

 =======
   #Using the patients data from Part 4, creating and executing a for loop that 
   #will display the results onto the screen for all the patients.
   
   for (i in 1:nrow(patients)) {
     
     weight <- patients$weight[i]
     
     height <- patients$height[i]
     
     result <- categorize_bmi(weight, height)
     
     print(paste("Patient", i, ":", result))
     
   }