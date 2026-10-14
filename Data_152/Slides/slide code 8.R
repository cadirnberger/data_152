sample_mean = 38.7
stdev=2.6
n=1000
mu0=40
t_score = (38.7-40)/(2.6/sqrt(1000))
pt(15.81,df=99,lower.tail = F)
p_value=pt (-15.81, df = 999)+pt(15.81, df= 999, lower.tail = F)
p_value
library(tidyverse)
t = read_csv("tires.csv")
sd(t$tires)
tt_score = (123.76-125)/(3.29/sqrt(50))
tt_score
pt_value = pt(-2.58, df = 49, lower.tail = F)
pt_value
t.test(t$tires, mean = 125, alternative = "greater")
ncbds = read_csv("C:/Users/caden/Data_152/Datasets/ncbirths.csv")

summary(ncbds)
ncbds %>% mutate(
  premie = factor(premie),
  mature = factor(mature),
  marital = factor(marital),
  gender = factor(gender),
  habit = factor(habit),
)
summary(ncbds)


ncbds = ncbds %>% filter(!is.na(habit))
summary(ncbds)

ncbds %>%
  ggplot(aes(x= weight, y= ..density..))+
  geom_histogram(fill="yellow", color = "black")+
  facet_grid(habit~.)


ncbds  %>% 
  group_by(habit)%>%
  summarize(
    avg_weight = mean(weight),
    stdev_weight = sd(weight),
    n=n()
    
  )
ncbds%>%
  mutate(
    habit= factor(habit,
                  level = c("smoker", "nonsmoker"))
  )
t.test(weight~habit,
       data = ncbds,
       alternative = "less"
       )
t.test(x=smokers, y=nonsmokers, alternative="less")
  
  
  
  
  
  
  
  
  
  
  
