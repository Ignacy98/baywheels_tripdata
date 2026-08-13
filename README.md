# Bay Wheels 2022 Bike Sharing
 
## Project Overview
This project analyzes bicycle trip data from the Lyft's Baywheels bike-sharing system to uncover insights about user behavior and trends. Using a combination of SQL queries and visualizations in MS Excel, the analysis focuses on key metrics such as trip duration, popular hours, and member and casual user comparison.
 
## Table of Contents
1. Project Overview
2. Dataset
3. Objectives
4. Technologies Used
5. Repository Structure
6. How to Run the Project
7. Key Insights
8. Next Steps
9. Contributing
10. License

### Dataset
The dataset used in this project contains trip data from the Baywheels bike-sharing system, collected across various months in 2022. Due to GitHub's file size limitations, only a subset of the data is available in this repository. For larger datasets, see How to Run the Project.
- ***Source***: ([Baywheels Trip Data](https://s3.amazonaws.com/baywheels-data/index.html))
- ***Date Range***: January 2022 - December 2022
- ***Size***: ~500MB (full dataset)
```Note: For space reasons, only the first CSV file is included in this repository. See instructions below for downloading the full dataset.```
 
### Objectives
- Analyze bicycle trip patterns to identify peak usage times.
- Compare user behavior between different types of users (e.g., casual vs. annual members).
- Evaluate trip duration trends and factors influencing them.
### Technologies Used
- ***SQL***: For cleaning the dataset, performing aggregations and further analysis.
- ***MS Excel***: For visualizations.
- ***Git & GitHub***: For version control and sharing the project.
### Repository Structure
```
├── sample_data/           # Raw and sample trip data (CSV)
├── sql/                   # SQL scripts for cleaning, transforming, and analyzing data
├── query_screenshots/     # Screenshots of query results (JPG)
├── charts/                # Exported visualizations (PNG)
├── notebook/              # Jupyter notebook
└── README.md
```
 
### How to Run the Project
#### Prerequisites
- Python 3.x installed with Pandas and Matplotlib libraries.
- SQL environment (e.g., SQLite, PostgreSQL).
#### Steps
1. Clone the repository:
```
git clone https://github.com/Ignacy98/baywheels_tripdata.git
cd baywheels_tripdata
```
2. Data Setup:
   - Due to file size limitations, you can download the full dataset from [this external link](https://s3.amazonaws.com/baywheels-data/index.html) (you can choose whatever months you like);
   - Place the dataset in the ```data/``` directory of the repository.
3. Run SQL Queries:
   - Execute the SQL queries provided in the ```sql/``` directory of the repository.
4. View Visualizations:
   - Open the ```.png``` files in ```charts/``` to view charts.
   - Open the ```.jpg``` files in ```query_screenshots/``` to view query result outputs.
### Key Insights
- ***Peak Usage Times***: Weekdays between 7-9 AM and 5-7 PM.
- ***User Types***: Annual members tend to take shorter, more frequent trips compared to casual users.
- ***The busiest time of the year***: September and October have the highest number of total rides, which are statistically the warmest months in San Francisco.
- ***Trip Duration***: Casual users tend to have longer trip durations, often exceeding 30 minutes.
### Next Steps
- Incorporate external factors like weather data to understand how it impacts trip patterns.
- Analyze bike maintenance data to correlate breakdowns with high-usage routes.
- Automate data extraction and analysis using Python scripts.
