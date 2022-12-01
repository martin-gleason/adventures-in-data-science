#primary data
library(tidyverse)
library(rjson)
tallies <- file.path("posts", "relaunch", "inputs", "primary.csv")
chicago <- file.path("posts", "relaunch", "shapefiles", "precinct.shp")
congress_2021 <- file.path("posts", "relaunch", "shapefiles", "congress_2021.json")

congress_map <- st_read(congress_2021)
precint_data <- read_csv(tallies)

chicago_precinct <- st_read(chicago)
glimpse(precint_data)
View(precint_data)

leaflet() |>
  addPolygons(data = chicago_precinct)
