library(tidyverse)
library(rvest)
library(RCurl)
library(here)


input <- read_lines("posts/adventofcodeseries/day_one/inputs/input.txt")


input |> str_extract("\\d+")

elven_calories

#if its a digit, add to a vector
#if it is not a digit, create an empty vector then add more digits

elven_calories <- list()
x <- c()
for(i in 1:length(input)){
  if(str_detect(input[i], "\\d+")){
   x <- c(x, input[i])
  } else {
    elven_calories <- append(elven_calories, list(x))
    x <- c()
  }
}


x <- c()
i <- 
if(str_detect(input[1], "\\d+")){
  x <- c(x, input[i])
  print(x)
} else {
  print("skip")
}
input[1]
