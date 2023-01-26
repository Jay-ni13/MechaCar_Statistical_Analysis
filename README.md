# MechaCar_Statistical_Analysis
## Project Overview
Analysis of AutoRUs' of production data for their new MechaCar prototype to identify key issues--such as vehicle performance, consistent standards, and comparison to competing vehicle models--that could be impacting manufacturing progress.

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

### T-tests on Suspension Coils
Diving further into this suspension coil production issue, a technical analysis in R utilizing t-tests helps determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1500 PSI.

 - The results for PSI across all manufacturing lots are statistically different from the population mean 1500 in the t-statistic value 1.89--which is greater than the t-critical 1.66--even though the p-value 0.06 is just above the significance level 0.05%:

<img src="https://github.com/Jay-ni13/MechaCar_Statistical_Analysis/blob/main/Images/total_ttest.png" width=50%>

Continuing to hone in on this manufacturing standards issue, each production lot's prototypes' suspension coils are compared to the company's average:

 - Lot 1's standards do not deviate from the mean:

<img src="https://github.com/Jay-ni13/MechaCar_Statistical_Analysis/blob/main/Images/lot1_ttest.png" width=50%>

 - Lot 2's PSI results do not statistically significantly deviate from the mean 1500 PSI:

<img src="https://github.com/Jay-ni13/MechaCar_Statistical_Analysis/blob/main/Images/lot2_ttest.png" width=50%>

 - Lot 3 is where the t-statistic value 2.09 is much greater than t-critical 1.66, and the p-value 0.04 is below the significance level 0.05%:
 
<img src="https://github.com/Jay-ni13/MechaCar_Statistical_Analysis/blob/main/Images/lot3_ttest.png" width=50%>

## Summary
The three analyses conducted indicate 1) which vehicle design components are most directly impacting fuel efficiency in the MechaCar protoypes, 2) the standard of quality control across the company, and 3) where there is variance in manufacturing suspension coils that is statistically different from the company's average. Another key piece that will help address manufacturing issues of AutoRUs' MechaCare prototype while it is still in production is a performance comparison to the company's competitors.

### Study Design: MechaCar vs Competition
While pursuing improvement of manufacturing standards for suspension coils, AutoRUs should also test other production areas to insure top-of-the-line quality control for all vehicles in the MechaCar lineup so that the cars' metrics for maintainance costs are consistently low while ensuring safety ratings are consistently high. This will give them a competitive edge from the getgo.

The hypothesis for this statistical study is: Ensuring all MechaCars are ISO 9001 and IATF 16949 compliant will ensure consistently high safety ratings and minimal to no maintainance costs for the car's first 3 years/60,000 miles.
 - H<sub>0</sub>: The quality control standards maintained by ISO 9001 and IATF 16949 have no impact on safety ratings and maintainance costs.
 - H<sub>a</sub>: The quality control standards maintained by ISO 9001 and IATF 16949 have positive correlation with safety ratings and a negative correlation with   maintainance costs.

A multiple linear regression model would be the best way to perform this analysis so that multiple independent variables can be tested for impact. The data needed to run this statistical test would include quality standards on vehicle components (in addition to the suspension coils) from MechaCar prototypes and their competition, as well as historical data from 5 automanufacturing companies on how standards compliance correlates with safety ratings and maintainance costs. 
