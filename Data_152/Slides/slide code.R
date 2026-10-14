library(tidyverse)
getwd()

setwd("C:/Users/caden/Data_152/Datasets")
list.files()
dshur = read_csv("NA_hurricane_1970_2024.csv")
nrow(dshur)

ncol(dshur)

names(dshur)

summary(dshur)

head(dshur,20)

NA_ds = dshur%>% distinct(BASIN)

ds%>%distinct(NATURE)

unique(ds$NATURE)

dshur_freq = dshur %>% distinct(year, NAME) %>% group_by(year) %>% 
  summarise(freq = n())

dshur_freq %>% ggplot(aes(x=year, y= freq)) +  geom_line() + 
  labs(title= "Hurr Freq NA Basin", 
       subtitle = 1970-2024, 
       x = "Year", 
       y = "Freq",
       caption = "Sorurce - NOAA"
       )

dshurcat = dshur %>% group_by(year, NAME) %>% summarise(max_cat=max(category, na.rm = T))%>%
  count(year, max_cat) 
dshurcat %>%  mutate(max_cat=factor("1","2","3","4", "5"))%>% ggplot(aes(x=year,y=n, fill= max_cat))+ geom_col()

  
  
  
  
  