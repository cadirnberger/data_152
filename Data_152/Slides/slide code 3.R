library(tidyverse)
#day1
mm = c("green", "brown", "blue", "red", "orange", "yellow")

prob = c(0.1,0.3,0.1,0.2,0.1,0.2)

tibble(mm, prob)

tibble(
  mymm = sample(
  mm, size=10000,replace = T,  prob = prob
))%>%count(mymm)%>% mutate(the_percent = n / 10000)

#day2
sample_space = 1:20
prob = rep(0.05,20)

nsim = 1000000
theoreical = tibble(sample_space, prob)

sim = sample(sample_space, nsim, replace = T)
as_tibble(
  sim
)%>% 
  count(value)




