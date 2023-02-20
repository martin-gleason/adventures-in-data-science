#library(here)
#regex_learning <- read_lines_raw("posts/adventofcodeseries/day_two/inputs/day2.txt")
# 
# rl <- regex_learning |> 
#   map(rawToChar) |>
#   unlist() |>
#   as_tibble()
# 
# colnames(rl) <- "hands"
# 
# rl
# 
# 
# rl <- rl |>
#   mutate(elf_hand = str_extract(hands, "([^\\s]+)"),
#          opposing_hand = str_extract(hands, "(?<=\\s).*")) |>
#   select(-hands)
# 
# rl
# 
# 
# test2 <- day_three[4] |> middle_string()
# 
# fstring <- test2[1] |>
#   str_split("") |>
#   unlist()
#   
# 
# 
# if(fstring[i] %in% unlist(test2[2]))
#   match <- c(match, fstring[i])
# 
# match <- c(match, test[2] |>
#              map(str_extract, fstring[i]) |>
#              unlist()
# 
#            fstring <- test2[1] |>
#              unlist() |>
#              str_split("")
#            
#            match <- c()
#            for(i in str_length(test2[1])){
#              if(fstring[i] %in% test2[2])
#                match <- c(match, fstring[i])
#              return(match)
#            }
#            match
#            
#            
# 
# match <- c()
# for(i in 1:str_length(test2[1])){
#   match <- c(match, test2[2] |>
#                map(str_extract_all, fstring[i]) |>
#                unlist()
#   )
# }
# match
# fstring[2] %in% unlist(test2[2])
# 
# xy <- str_match_all(fstring[2], unlist(test2[2]))
# 
# class(fstring)
# 
# 
# 

##


# test2 <- day_three[4] |> split_middle_string()
# 
# 
# 
# compare_strings <- function(list, ...){
#   match = c()
#   front = list[1] |>
#     unlist()
#   count = str_length(front)
#   
#   x = front |>
#     map(str_split, "") |>
#     unlist()
#   
#   for(i in 1:count){
#     match = c(match, list[2] |>
#                  map(str_extract_all, x[i]) |>
#                  unlist())
#   }
#   return(match)
# }
# 
# xzz <- compare_strings(test2)

# 
# score_letter <- function(letter, ...){
#   score = c()
#   alpha = c(letters, LETTERS)
#   value = c(1:52)
#   letter_value <- bind_cols(Letter = alpha, Value = value)
#   
#   for(i in 1:str_length(letter)){
#     l = str_split(letter, "") |> 
#       unlist()
#     score = c(score, letter_value$Value[letter_value$Letter == l[i]])
#   }
#   return(score)
# }
# 
# score_letter() |> sum()
# 
# y <- str_split(x, "") |> unlist()
# y[2]
# str_length(x)
# x


# total <- list()
# for(i in 1:length(day_three)){
#   score = ""
#   score = day_three[i] |>
#     split_middle_string() |>
#     compare_strings()
#   
#   total = append(total, score) 
# }
# 
# h <- unlist(total)
# 
# h |> 
#   str_flatten() |> 
#   score_letter() |>
#   sum()
# 
# split_middle_string("wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn") |>
#   compare_strings() |>
#   unique()
# 
# 
# day_three
# 
# 
# 
# elf_group <- function(input, ...){
#   group = list()
#   cohort = list()
#   
#   for(i in 1:str_length(input)){
#     for(j in 1:3){
#       cohort = append(cohort, list(input[j]))
#     }
#     group = append(group, cohort)
#   }
#   return(group)
# }
# 
# for(i in 1:length(day_three)){
#   for(j in 1:3){
#     g = list()
#     g = append(g[j], list(day_three[i]))
#   }
# }
# 
# for(i in 1:ength(day_three)){
#   print(day_three[i])
# }
# 
# 
# 
# 
# day_three_df <- day_three |> 
#   tibble() |>
#   mutate(rucksak = 1:length(day_three))
# 
# for (i in 1:nrow(day_three_df))
# 
# 
# day_three
#   
# 
# 
# grouping <- elf_group(day_three)
# 
# elf_group <- list()
# for(i in 1:length(day_three)){
#   while(i)
#   elf_group <- list(day_three[i])
# }
# 
# 
# a <- read_lines_raw("day_three/inputs/day_three.txt")
# 
# group1 <- list(day_three[1:3])
# group2 <- list(day_three[4:6])
# group3 <- list(day_three[7:9])
# 
# x <- seq(1, 300, 3)
# y  <- list()
# group <- list()
# for(i in 1:100){
#   b = x[i]
#   e = x[i]+2
#   y = list(day_three[b:e])
#   group = append(group, y)
# }
# 
# x[2]
# 
# x[100]
#  <- "guest"
# 
# append(group, group1)
# 
# for(i in 1:100){
#   
#   group[i]
# }


demo <- c("vJrwpWtwJgWrhcsFMMfFFhFp", "jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL", "PmmdzqPrVvPwwTWBwg")


find_badge <- function(list, ...){
  match = c()
  
  
  
  
  delisting = list[[1]] |>
    unlist()
  
  count = str_length(delisting)
  
  x = delisting[[1]] |>
    map(str_split, "") |>
    unlist()
  
  for(i in 1:count){
    match = c(match, list[2] |>
                map(str_extract_all, x[i]) |>
                unlist())
  }
  
  
  
  match <- unique(match) #<- read the instructions
  return(match)
}

find_badge(demo)



