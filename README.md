# ETL_Aircraft_Accidents

This project aims to practice the process of ETL. 

**E**xtract
**T**ransform
**L**oad

In this project we collected data through various sources to produce a working database. This database contains information concerning
all recorded aircraft incidences in the US since 1979. This data combines several sources together to form a searchable database. The following
sources were used for analysis:

Aviation crash data was obtained from [Kaggle](https://www.kaggle.com/khsamaha/aviation-accident-database-synopses). This data included dates,
times, location data, information about the type of incident, fatalities, and plane information.

Using the date, time, and location information a [historical weather api](https://www.visualcrossing.com/resources/documentation/weather-api/weather-api-documentation/) was used. This pulled weather data from the day of each recorded incident.

Finally we gather information about each vehicle involved with the crash from [Wikipedia](https://www.wikipedia.org/). The data obtained from 
Wikipedia included the plane name and the link to each plane's page.

All data was cleaned and imported into a SQL database (pgadmin4). The code to run the tables for this database are included in this file.

All cleaning was done in python. 

The following order is the order of data generation:

1) aviation.ipynb
2) weather_api.ipynb
3) webscrape.ipynb

# Libraries needed to run

To run this code you will need the following python libraries:

pandas

splinter

bs4

json

time

datetime

requests


