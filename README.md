# Module-7-Challenge  Pewlett-Hackard-Analysis
# Overview of Project #
The purpose of this Project is to analyze and visualize Plan My Trip app and improve the app, so that clients can have a less stressful journey with a cohesive travel itinerary. The goal is to also determine which additional features will help travelers in their journey, specifically to help them find potential travel destinations and nearby hotels. The data sample consisted of four cities to create a travel itinerary by using the Google Maps Directions API and creating a travel route between the four cities as well as a marker layer map.

The analysis consisted of the following:
1. Retrieve Weather Data
2. Create a Customer Travel Destination Map
3. Create a Travel Itinerary Map

# Resources #
Data Source : Open Weather website, Google gmaps <br>
CSV Files: Weather_Database.csv, WeatherPy_vacation.csv <br>
Software: Python, Anaconda, Jupyter Notebook <br>
Jupyter Notebook Files: Weather_Database.ipynb, Vacation_Search.ipynb, Vacation_Itinerary.ipynb  <br>
Library Modules: Pandas, Numpy, Scipy.stats,CitiPy, SciPy, Python Requests, APIs, JSON Traversals

# Results #
## Weather Data ##
The Weather Data was retrieved based on a set of 2,000 random latitudes and longitudes. Using the Open Weather map and retrieving the information with API, the cities weather data was collected with the current weather description and saved in a new DataFrame.

![Total_rides](/Weather_Database/WeatherDataFrame.png)
<br><br>

## Customer Travel Destinations Map ##
Using customer weather preferences, potential travel destinations were identified along with nearby hotels. The destinations are identified with a marker layer map with pop-up markers.

![Vacation_Search](/Vacation_Search/WeatherPy_vacation_map.png)
![Vacation_Search](/Vacation_Search/WeatherPy_vacation_map1.png)
<br><br>
 
## Travel Itinerary Map ##
Using Google Directions API,a travel route was created to display positional coordinate between four cities chosen by the customer. A marker layer map with pop-up was added to provide customized information to the user describing the name of the city, country, hotel and current weather description.

![Total_Fares](/Vacation_Itinerary/WeatherPy_vacation_map.png)
![Total_Fares](/Vacation_Itinerary/WeatherPy_travel_map_markers.png)
<br><br>

## Conclusion ##
### Summary ###
From our analysis, we were able to conclude that the following additional features will improve the App Search:
1. By adding Weather Data, clients can easily get all the details related to the weather directly, allowing them to plan throughly. 
2. By adding a Destination and Hotel Search, clients can esaily plan their destinations. 
3. By creating a Route, clients can easily plan their journey and their stops.  

### Additional Features ###
The App can be further improvied by introducing additional features like:
1. Making the App support other languages
2. Adding google translator to the app
