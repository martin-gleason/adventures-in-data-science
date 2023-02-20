# # demo <- c("vJrwpWtwJgWrhcsFMMfFFhFp", "jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL", "PmmdzqPrVvPwwTWBwg")
# # 
# # find_badge <- function(list, ...){ 
# #   match = c()
# #   delisting = list[[1]] %>%
# #     unlist()
# #   elves = length(delisting) 
# #   counts = str_length(delisting)
# #   
# #   x = delisting %>%
# #     map(str_split, "") %>%
# #     unlist()
# #   
# #   for(i in 1:counts){ 
# #     match = c(match, list[2] %>%
# #                 map(str_extract_all, x[i]) %>%
# #                 unlist()) } 
# #   
# #   match = unique(match) #<- read the instructions 
# #   
# #   return(match) 
# # }
# # 
# # find_badge(demo)
# # 
# # 
# # x <- demo[1] %>%
# #   map(str_split, "") %>%
# #   unlist()
# # 
# # y <- demo[2]
# # 
# # for(i in 1:length(x)){
# #   print(x[i])
# # }
# # 
# # 
# # str_break <- function(x, ...){
# #   broke_string = x %>%
# #     map(str_split, "") %>%
# #     unlist()
# #   return(broke_string)
# # }
# # 
# # for(i in 1:length(demo)){
# #   x = str_break(demo[i])
# #   for(j in 1:length(x))
# #     print(x[j])
# # }
# # 
# # 
# # 
# # 
# # 
# # xt <- str_break(demo[1])
# # 
# # length(xt)
# # 
# # for(i in 1:length(demo)){
# #   a = str_break(demo[i])
# #   
# #   for()
# # }
# # 
# # 
# # a = str_break(demo[1])
# # 
# # str_detect(a, "r")
# # demo[2] %>% str_detect(a)
# # 
# # 
# # for(i in 1:length(a)){
# #   z = c()
# #   if(str_detect(demo[2], a[i])){
# #     z = glue::glue(z, a[i], .sep = ", ")
# #     }
# #   return(z)
# # }
# # 
# # 
# # z = "a"
# # if(str_detect(demo[2], "j")){
# #   z = glue::glue(z, "j", .sep = ", ")
# # }
# # z
# # 
# # demo1 <- str_break(demo[1])
# # demo2 <- str_break(demo[2])
# # demo3 <- str_break(demo[3])
# # 
# # z = c()
# # for(i in 1:length(demo1)){
# #   for(j in 1:length(demo2)){
# #     if(demo1[i] == demo2[j]){
# #       z = demo1[i]
# #       
# #       for(l in 1:length(demo3)){
# #         if(z == demo3[l])
# #           return(z)
# #       }
# #     }
# #   }
# # }
# # z
# # 
# # z = "a"
# # if(demo1[3] == demo2[17]){
# #   z = glue::glue(z, demo1[3], .sep = ",")
# # }
# # z
# # 
# # 
# # b <- "b"
# # b
# # 
# # glue::glue(b, b, .sep = ", ")
# # 
# # 
# # 
# # ndemo1 <- "wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn" %>% str_break()
# # ndemo2 <- "ttgJtRGJQctTZtZT"  %>% str_break()
# # ndemo3 <- "CrZsJsPPZsGzwwsLwLmpwMDw"  %>% str_break()
# # 
# # 
# # z = c()
# # for(i in 1:length(ndemo1)){
# #   for(j in 1:length(ndemo2)){
# #     if(ndemo1[i] == ndemo2[j]){
# #       z = ndemo1[i]
# #       
# #       for(l in 1:length(ndemo3)){
# #         if(z == ndemo3[l])
# #           return(z)
# #       }
# #     }
# #   }
# # }
# # z
# # 
# # 
# # test <- group[1] %>% str_break()
# # 
# # group[[1]]
# 
# console_test <- group[[1]]
# 
# console_list <- console_test %>% map(str_break)
# 
# 
# 
# str_break <- function(x, ...){
#   broke_string = x %>%
#     map(str_split, "") %>%
#     unlist()
#   return(broke_string)
# }
# 
# find_character <- function(list, ...){
#   collected_characters = c()
#   for(i in 1:length(list)){
#     cluster = list[[i]] %>%
#       map(str_break)
#     common_character = Reduce(intersect, cluster)
#     collected_characters = c(collected_characters, common_character)
#   }
#   return(collected_characters)
# }
# 
# 
# group_test <- find_character(group[2])
# 
# console_list
# 
# demo_redux <- list(c(ndemo1, ndemo2, ndemo3)) %>%
#   append() %>%
#   map(str_flatten)
# 
# 
# test_3 <- list(c(str_flatten(ndemo1), str_flatten(ndemo2), str_flatten(ndemo3)))
# 
# 
# 
# find_character(demo_redux)
# find_character(test_3)
# 
# str_flatten(ndemo1)
# 
# Reduce(intersect, demo_redux)
# 
# find_character(console_list)
# 
# 
# group[1]
# group[[1]] %>% map(str_break)
# demo_redux %>% map(str_break)
# 
# demo_redux[[1]]
# 
# class(group)
# class(demo_redux)
# 
# str_length(group)
# str_length(demo_redux)
# length(group)
# 
# length(demo_redux)


str_break <- function(x, ...){
  broke_string = x %>%
    map(str_split, "") %>%
    unlist()
  return(broke_string)
}

find_character <- function(list, ...){
  collected_characters = c()
  for(i in 1:length(list)){
    cluster = list[[i]] %>%
      map(str_break)
    common_character = Reduce(intersect, cluster)
    collected_characters = c(collected_characters, common_character)
  }
  return(collected_characters)
}

common_elements <- find_character(group)

score <- common_elements %>%
  str_flatten %>%
  score_letter() %>%
  sum()





