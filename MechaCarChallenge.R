library(dplyr)
# Deliverable 1
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

# Deliverable 2
# Read in the Suspension_Coil.csv file
suspensionCoil_df <- read.csv("Suspension_Coil.csv")
# Summarize dataframe
total_summary <- suspensionCoil_df %>% summarise(Mean=mean(PSI),Median=median(PSI),
                                               Variance=var(PSI),SD=sd(PSI))
lot_summary <- suspensionCoil_df %>% group_by(Manufacturing_Lot) %>% 
  summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Deliverable 3
# t-tests
total_ttest <- t.test(suspensionCoil_df$PSI,mu=1500)
total_ttest

lot1_ttest <- t.test(subset(suspensionCoil_df,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
lot1_ttest

lot2_ttest <- t.test(subset(suspensionCoil_df,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
lot2_ttest

lot3_ttest <- t.test(subset(suspensionCoil_df,Manufacturing_Lot=="Lot3")$PSI,mu=1500)
lot3_ttest
