Crash_data
--
crash_id  char
date char FK >- Weather_data.date
country char FK >- Weather_data.county
city char FK >- Weather_data.city
plane_make char FK >- Wiki_hyperlink.plane_make
plane_model char FK >- Wiki_hyperlink.plane_model
fatalities int



Weather_data
--
date char
city char
county char
temperature int
wind_speed int
humidity int
cloudiness int


Wiki_hyperlink
--
plane_make
plane_model
wiki_link
