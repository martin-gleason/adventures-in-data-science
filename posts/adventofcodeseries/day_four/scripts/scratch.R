# #day four scratch
# 
# library(here)
# thislist <- list("apple", "banana", "cherry")
# 
# append(thislist[1], "orange")
# 
# 
# thislist <- list(thislist, thislist)
# 
# test_pairs <- pairs[1]
# 
# test_pairs %>% str()
# test_pairs %>% append(c("X", "x"))
# test_pairs %>% map(list, c(1:5))
# 
# 
# test_pairs[3] <- 1
# test_pairs[[2]] <- "no"
# 
# 
# pairs %>% view()
# 
pair_list <- readr::read_lines("~/Dropbox (Personal)/CodingProjects/R/adventures_in_data_science/posts/adventofcodeseries/day_four/inputs/day_four.txt")
# 
# 
# 
# 
# pair_list <- pair_list %>%
#   as.list()%>%
#   map(str_split, ",") %>%
#   flatten() %>%
#   map(str_replace, "-", " ") 
# 
# 
# test_tuple <- pair_list[[1]]
# 
# test_tuple %>% map(strsplit, " ", as.numeric) %>% str()
# 
# do.call(Map, c(`:`, lapply(strsplit(test_list, ':'), as.numeric)))
# 
# lapply(strsplit(pair_list, ":"), function(x) x[1]:x[2])
# 
# 
# # 
# #   str_split(" ") %>%
# #   str_c() %>%
# #   as_tibble() %>%
# #   mutate(elf_a_start = str_extract(., "[^-]"))
# #   
# # 
# # 
# # 
# # 
# # %>%
# #   set_names("elf_a") %>%
# #   mutate(elf_b = str_extract(elf_a, "(?<=,).*"),
# #          elf_a = str_extract(elf_a, "([^,]+)"))




#pairs <- readr::read_lines(file.path("inputs", "day_four.txt"))  

pair_list %>% 
  str_split(" ") %>%
  str_c() %>%
  as_tibble() %>%
  set_names("elf_a") %>%
  mutate(elf_b = str_extract(elf_a, "(?<=,).*"),
         elf_a = str_extract(elf_a, "([^,]+)"),
         elf_a_start = str_extract(elf_a, "([^-]+)") %>%
           as.integer(),
         elf_a_end = str_extract(elf_a, "(?<=-).*") %>%
           as.integer(),
         elf_b_start = str_extract(elf_b, "([^-]+)") %>%
           as.integer(), 
         elf_b_end = str_extract(elf_b, "(?<=-).*") %>%
           as.integer()
)

pairs %>%
  mutate(a_contains_b = elf_a_start <= elf_b_start & elf_a_end >= elf_b_end,
         b_contains_a = elf_b_start <= elf_a_start & elf_b_end >= elf_a_end)






