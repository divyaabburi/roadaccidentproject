Road Accident Data Analysis
Overview
This repository contains SQL queries used to analyze road accident data from the roadaccident.rad table. The analysis aims to derive key performance indicators (KPIs) related to road safety and accident severity.

Data Preparation
Date Formatting: The accident_date column was converted to the DATE data type after formatting.
Column Modification: The accident_date column was modified to DATE data type to facilitate date-based operations.
Key Performance Indicators (KPIs)
Total Number of Casualties:

Sum of casualties for the specified time frame.
Accident Severities and Casualties:

Provides a breakdown of accident severities along with the total number of casualties for each severity.
Casualties by Road Type:

Sum of casualties grouped by road type.
Casualties by Urban and Rural Areas:

Sum of casualties grouped by urban or rural area.
Casualties in Dry Conditions in 2022:

Sum of casualties for accidents occurring in 2022 with dry road surface conditions.
Top Local Authorities by Accident Count:

Identifies the top 10 local authorities with the highest number of accidents.
Vehicle Group and Casualties:

Groups vehicle types into categories and calculates the total casualties for each group.
Light Conditions and Accident Count:

Breakdown of accidents based on light conditions, including daylight, darkness with lighting known, and darkness with lighting unknown.
Road Surface Conditions and Casualties:

Sum of casualties grouped by road surface conditions, ordered by total casualties.
Tools Used for Analysis
Tableau: Visualization tool used for creating interactive dashboards and visual representations of the data.
Python: Utilized for data manipulation, statistical analysis, and generating visualizations using libraries like Pandas, Matplotlib, and Seaborn.
Excel: Used for additional data processing, charting, and analysis.
Usage
Clone the repository.
Execute the provided SQL queries on your database containing road accident data.
Further analysis can be performed using tools like Tableau, Python, or Excel based on your requirements.


