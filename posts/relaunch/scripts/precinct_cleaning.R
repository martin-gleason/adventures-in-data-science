#primary data
library(tidyverse)
library(rjson)
library(sf)

tallies <- file.path("posts", "relaunch", "inputs", "primary.csv")
chicago <- file.path("posts", "relaunch", "shapefiles", "precinct.shp")
ward_precincts <- file.path("posts", "relaunch", "shapefiles", "WardPrecincts_2022", "WardPrecincts_2022.shp")
congress_2021 <- file.path("posts", "relaunch", "shapefiles", "congress_2021.json")

congress_map <- st_read(congress_2021)
precinct_data <- read_csv(tallies)

home_ward_data <- precinct_data |>
  mutate(ward = as.integer(str_extract(PrecinctName, "(?<=\\s)\\d{0,2}")),
         precinct = as.integer(str_extract(PrecinctName, "(\\d{0,2})$"))) |>
  filter(ward == "11")


str_extract(precinct_data$PrecinctName, "(\\d{0,2})$")

chicago_precinct <- st_read(ward_precincts)

kina_2022 <- chicago_precinct |> 
  filter(ward_2022 == 11) |>
  left_join(home_ward_data, 
            by=c("ward_2022" = "ward", 
                 "precinct_1" = "precinct")) |>
  select(-3, -6:-9, -11:-15)

kina_map <- kina_2022 |>
  mutate(CandidateName = str_to_title(CandidateName)) |>
  ggplot() +
  geom_sf(aes(fill = VoteCount))  +
  facet_wrap(~CandidateName) +
  theme_void() +
  labs(title = "June 28th, 2022 Primary Results \n in My Neighborhood\n",
       fill = "Vote Counts") +
  theme(plot.title = element_text(hjust = 0.5))


