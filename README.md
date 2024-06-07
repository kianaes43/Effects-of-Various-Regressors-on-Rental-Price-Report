Study on Rent Determinants for Residential Properties

**Overview**
The main objective of this study is to investigate the relationship between the rental price of a house and various factors affecting it. These factors include both physical characteristics of the house and regional factors.

**Factors Considered
**Physical Characteristics:

Number of rooms
Number of bathrooms
Square footage of the house
Square footage of the lot
Age of the house (in years)
Selling price of the house (in dollars)

**Regional Factors:
**
Neighborhood zone
Distance to the nearest Central Business District (CBD) (in feet)
Distance to the nearest interstate (in feet)
Proximity to work
Access to public transportation
Traffic congestion

**Amenities**:

Fully paid utilities
Modernized kitchen

**Occupancy Restrictions:
**
No pets allowed
Data Cleaning Process

**Outlier Detection and Removal:
**
Outliers were detected in the selling price using scatterplots (Figure 1 and Figure 2).
These outliers were removed to fulfill the Ordinary Least Squares (OLS) assumptions.

**Handling Missing Values:
**
Observations containing missing data were deleted.

**Data Cleaning in Stata:
**
The dataset was cleaned using the drop command in Stata, as seen in Figures 3 and 4.

**Files in Repository
**
data/: Contains the raw and cleaned datasets.
code/: Contains Stata scripts used for data cleaning and analysis.
figures/: Contains figures referenced (Figure 1, Figure 2, Figure 3, Figure 4).
results/: Contains results of the analysis including the final model.
Steps to Reproduce
Dataset Preparation:

Ensure the dataset is placed in the data/ directory.

**Data Cleaning:
**
Run the Stata script provided in the code/ directory to clean the dataset.
The script will handle outlier detection and removal, as well as deletion of observations with missing data.
Analysis:

Use the cleaned dataset for further analysis and model specification.
Notes
The analysis aims to determine the monthly rent for houses over the next four years.
All the necessary variables were generated in Stata for outlier detection and dataset cleaning.
