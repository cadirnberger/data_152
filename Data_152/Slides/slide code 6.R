1467 - 40
1457 + 40
(1467,1507)<- 68%
1467 - 2*40
1457 + 2*40
(1387,1547)
library(tidyverse)
library(skimr)
fsds=read_csv("foodSpending.csv")
ds %>%
  ggplot(aes(x=amt))+
  geom_histogram(fill = "maroon3", color= "black", bins = 10)
ds %>%
  summarise(sample_mean = mean(amt), 
            stdev = sd(amt), 
            sample_size = n(), 
            t_star= qt(0.975, 20-1),
            MOE = t_star*stdev/sqrt(sample_size),
            lower = sample_mean - MOE,
            upper = sample_mean + MOE
            )

ds %>%
  summarise(sample_mean = mean(amt), 
            stdev = sd(amt), 
            sample_size = n(), 
            t_star= qt(0.995, 20-1),
            MOE = t_star*stdev/sqrt(sample_size),
            lower = sample_mean - MOE,
            upper = sample_mean + MOE
            )
(1471 + 628)/2
1471 - 1049.5
1049.5 - 628
sqrt(30)
421.5/qt(0.975, 30-1) * sqrt(30)
tibble(
  x = rbinom(1000, 20 , 0.265)
)%>%
   ggplot(aes(x=x)) +
    geom_histogram(bins= 20, fill= "green", color = "black")


phat = 27/212
z_star = qnorm(.9999)
MOE = z_star * sqrt(phat*(1-phat)/212)
lower = phat -  MOE
high = phat +  MOE








