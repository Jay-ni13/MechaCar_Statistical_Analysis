# MechaCar_Statistical_Analysis
## Project Overview
Analysis of AutoRUs' of production data for their new MechaCar prototype to identify key issues--such as vehicle performance, consistent standards, and comparison to competing models--that could be impacting manufacturing progress.

## Resources
 - Data Source: MechaCar_mpg.csv, Suspension_Coil.csv
 - Software: R v4.2.2, RStudio v2022.12.0+353

## Results
### Linear Regression to Predict MPG
Five design specifications--1) vehicle length, 2) vehicle weight, 3) spoiler angle, 4) groud clearance, and 5) drivetrain--were utilized to interpret ideal vehicle and miles per gallon performance in the test results of 50 prototype MechaCars.

<img src="https://github.com/Jay-ni13/MechaCar_Statistical_Analysis/blob/main/Images/linear_reg_to_predict_mpg.png" width=60%>

Output from the linear regression model indicates that of the five design specifications, only vehicle length and ground clearance provide a significant amount of variance to the mpg values in the prototype dataset. The slope of the model is not zero as the p-values of vehicle length and ground clearance are far below the significance level of 0.01%. However, even with the strong correlation of vehicle length and ground clearance to mpg--evidenced by the r<sup>2</sup> value 0.715--this model does not predict mpg of MechaCar prototypes effectively because it is overfit as only two of the five independent variables are statistically significant.

### Summary Statistics on Suspension Coils
Multiple lots are involved in production of the prototype MechaCars; to determine if the manufacturing process is consistent across these lots, the weight capacities of numerous suspension coils are tested against each other.

The suspension coil’s PSI continuous variable across all lots:
<img src="https://github.com/Jay-ni13/MechaCar_Statistical_Analysis/blob/main/Images/suspension_coil_total_summary.png" width=40%>

The PSI metrics for each manufacturing lot:
<img src="https://github.com/Jay-ni13/MechaCar_Statistical_Analysis/blob/main/Images/suspension_coil_lot_summary.png" width=50%>

Design specifications for the MechaCar suspension coils mandate that the variance of the suspension coils must not exceed 100 pounds per square inch. Initial analysis of all prototypes produced indicates that manufacturing as a whole is within these guidelines, further analysis shows that while lots 1 and 2 are in accordance with this rule, lot 3 is not meeting specifications as the variance of its suspension coils is 170 PSI.

## Summary
