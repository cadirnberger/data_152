library(tidyverse)

baking_time = c(10, 14)
suger_type = c("brown","grandulater")
butter = c(100, 200)

oven_block = c("oven1", "oven2") #blocks
centerpoint = expand_grid(
  baking_time = 12,
  suger_type,
  butter = 150
)
default = tibble(
  baking_time= 14, 
  suger_type="grandulater", 
  butter = 300
)

bds = expand_grid(
  baking_time,
  suger_type,
  butter
)

bds2 = bind_rows(
  bds, centerpoint, default
)



bds3 = expand_grid(
  bds2,
  oven_block
  )


bds4 = bds3 %>%
  slice_sample(prop=1) %>%
  arrange(oven_block)%>%
  expand_grid( replicate = 1:4)


bds_final = bds4%>% 
  mutate(
    chewiness = NA,
    overall_taste = NA
  )
write_csv(bds_final, "data152_fa25_itshot.csv")


  
  
  
  
  