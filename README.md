# MechaCar_Statistical_Analysis
## Project Overview
Analysis of AutoRUs' of production data for their new MechaCar prototype to identify key issues impacting manufacturing progress.

## Resources
 - Data Source: MechaCar_mpg.csv, Suspension_Coil.csv
 - Software: R v4.2.2, RStudio v2022.12.0+353

## Results
### Linear Regression to Predict MPG
Five design specifications--1) vehicle length, 2) vehicle weight, 3) spoiler angle, 4) groud clearance, and 5) drivetrain--were utilized to interpret ideal vehicle and miles per gallon performance in the test results of 50 prototype MechaCars.

<img src="https://github.com/Jay-ni13/MechaCar_Statistical_Analysis/blob/main/Images/linear_reg_to_predict_mpg.png" width=60%>

Output from the linear regression indicates that of the five design specifications, only vehicle length and ground clearance provide a significant amount of variance to the mpg values in the prototype dataset. The slope of the model is not zero as the p-values of vehicle length and ground clearance are far below the significance level of 0.01%. However, even with the strong correlation of vehicle length and ground clearance to mpg--evidenced by the r^2^ value 0.715--this model does not predict mpg of MechaCar prototypes effectively because it is overfit as only two of the five independent variables are statistically significant.

## Summary
