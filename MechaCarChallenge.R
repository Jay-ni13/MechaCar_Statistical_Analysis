library(dplyr)

# Read in the MechaCar_mpg.csv file
mechaCar_df <- read.csv("MechaCar_mpg.csv")

# Perform linear regression to predict mpg
mpg_reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, 
              data = mechaCar_df)
summary(mpg_reg)

# Get the r-squared and p-values
summary(mpg_reg)$coefficients[,4]
# vehicle_length p-value <- 2.60e-12 ***
# vehicle_weight p-value <- 0.0776 .
# spoiler_angle p-value <- 0.3069
# ground_clearance p-value <- 5.21e-08 ***
# AWD p-value <- 0.1852
summary(mpg_reg)$r.squared
# r-squared value <- 0.7149033