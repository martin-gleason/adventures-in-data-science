library(mapboxer)
library(mapboxapi)
library(leaflet)
library(tidyverse)
library(sf)
library(here)

mapbox_key <- file.path("keys", "mapbox.txt")
key <- read_lines(mapbox_key)


districts <- st_read("posts/relaunch/shapefiles/congress_2021.json")
mb_access_token(key, install = TRUE, overwrite = TRUE)


il_7_centroid <- districts[districts$District == "7", ] |>
  st_centroid() |>
  st_coordinates()



home <- "624 w 43rd Place, Chicago, Il, 60609"

leaflet(home) |>
  addMapboxTiles(username = "mapbox",
                 style_id = "streets-v12") |>
  addPolygons(data = districts[districts$District == "7", ]) |>
  setView(lng = il_7_centroid[1],
          lat = il_7_centroid[2],
          zoom = 11)

leaflet(home) |>
  addMapboxTiles(username = "mapbox",
                 style_id = "streets-v12") |>
  addPolygons(data = districts[districts$District == "7", ]) |>
  setView(lng = il_7_centroid[1],
          lat = il_7_centroid[2],
          zoom = 11)


x <- leaflet(home) |>
  addMapboxTiles(username = "mapbox",
                 style_id = "streets-v12") 

x <- leaflet(home)
x <- addTiles(x)

leaflet(congress_map) |> addTiles()

congress_map


districts |>
  as_mapbox_source() |>
  mapboxer(center = c(il_7_centroid[1],
                      il_7_centroid[2]),
           zoom = 12) |>
  add_layer(style = list(
    id  = "District",
    type = "fill",
    fill_color = "white",
    fill_opacity = ".3",
    source_layer = districts
  ))
# 
# district_style <- list(
#   id = "District",
#   source = districts,
#   paint = list(
#     "line_color" = "white",
#     "fill_color" = "blue",
#     "fill_opacity" = 0.5
#   )
# )
# 
# districts |>
#   as_mapbox_source() |>
#   mapboxer(center = c(il_7_centroid[1],
#                       il_7_centroid[2]),
#            zoom = 10) |>
#   add_layer(style = list(
#     id  = "District",
#     type = "fill",
#     fill_color = "blue",
#     fill_opacity = 1,
#     "source_layer" = districts
#   ))
# 
# remotes::install_github("crazycapivara/mapboxer#104")
# library(mapboxer)
# mapboxer_use_v2(TRUE)
# 
# broadband <- mapbox_source(
#   type = "vector",
#   url = "mapbox://kwalkertcu.us_broadband"
# )
# 
# broadband_map <- mapboxer(zoom = 3, style = basemaps$Mapbox$light_v10,
#                           center = c(-96, 37.5),
#                           projection = list(
#                             name = "albers",
#                             center = c(-96, 37.5),
#                             parallels = c(29.5, 45.5)
#                           )) %>%
#   add_layer(style = list(
#     id = "county",
#     type = "fill",
#     source = broadband,
#     "source-layer" = "counties",
#     paint = list(
#       "fill-color" = list(
#         "interpolate",
#         list("linear"),
#         list("get", "estimate"),
#         33,
#         '#edf8b1',
#         65,
#         '#7fcdbb',
#         97,
#         '#2c7fb8'
#       ),
#       "fill-opacity" = 0.8
#     ),
#     maxzoom = 7
#   ),
#   popup = "{{NAME}}<br/>Estimate: {{estimate}}%")  %>%
#   add_layer(style = list(
#     id = "tracts",
#     type = "fill",
#     source = broadband,
#     "source-layer" = "tracts",
#     paint = list(
#       "fill-color" = list(
#         "interpolate",
#         list("linear"),
#         list("get", "estimate"),
#         33,
#         '#edf8b1',
#         65,
#         '#7fcdbb',
#         97,
#         '#2c7fb8'
#       ),
#       "fill-opacity" = list(
#         "case",
#         list("==", list("get", "estimate"), NA),
#         0.1,
#         0.8
#       )
#     ),
#     minzoom = 7
#   ),
#   popup = "{{NAME}}<br/>Estimate: {{estimate}}%")
# 
# 

# 
# # Create a source
# y <- motor_vehicle_collisions_nyc %>%
#   dplyr::mutate(color = ifelse(injured > 0, "red", "yellow")) %>%
#   as_mapbox_source(lng = "lng", lat = "lat")
# 
# y %>%
#   # Setup a map with the default source above
#   mapboxer(
#     center = c(-73.9165, 40.7114),
#     zoom = 10
#   ) %>%
#   # Add a navigation control
#   add_navigation_control() %>%
#   # Add a layer styling the data of the default source
#   add_circle_layer(
#     circle_color = c("get", "color"),
#     circle_radius = 3,
#     # Use a mustache template to add popups to the layer
#     popup = "Number of persons injured: {{injured}}"
#   )

