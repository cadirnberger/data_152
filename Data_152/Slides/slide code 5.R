library(tidyverse)
ds = read.csv("sat-scores-by-state-2025.csv")
head(ds)
nrow(ds)
ncol(ds)
names(ds)
summary(ds)

ds = ds %>%
  rename(SAT_avg = SATScoresAvgTotal_2024) %>% 
  select(-stateFlagCode)
ds %>%
  arrange(SAT_avg)



ds %>%
  summarise( mean_SAT = mean(SAT_avg),
             sd_SAT= sd(SAT_avg),
  )
the_mean = 1091
the_sd = 106.4109

ds %>%
  mutate( z_score = (SAT_avg - the_mean)/the_sd )%>%
  select(state,SAT_avg, z_score)

z_A = (1500-1500)/250
z_B= (21- 20.8)/4.8
SATsim = rnorm(10000, 1500, 250)
tibble(SAT_sim=SATsim) %>%
  ggplot(aes(x=SATsim))+
  geom_histogram(fill="green", color = "black", bins =20)+
  geom_vline(xintercept = 1725, linetype = "dotted")+
  geom_vline(xintercept = c(1500-250, 1500+250),  color= "hotpink2")+
  geom_vline(xintercept = c(1500-250*2, 1500+250*2),  color= "blue")+
  geom_vline(xintercept = c(1500-250*3, 1500+250*3),  color= "seagreen")

1500-250
1500+250

1500-250*2
1500+250*2

1500-250*3
1500+250*3




tibble(SAT_sim= SATsim) %>%
  summarise(
    total_bw_lsigma = sum(SATsim>= 1250 & SATsim<=1750)/10000,
    total_bw_lsigma = sum(SATsim>= 1000 & SATsim<=2000)/10000
  )
stregth = rnorm(1000, 800,50)
tibble(STR_sim=stregth) %>%
  ggplot(aes(x=STR_sim))+
  geom_histogram(fill="blue", color = "darkblue", bins = 20)+
  geom_vline(xintercept = c(800-50, 800+50),  color= "green3")+
  geom_vline(xintercept = c(800-50*2, 800+50*2),  color= "green4")+
  geom_vline(xintercept = c(800-50*3, 800+50*3),  color= "darkgreen", linewidth = 2)
800-50*3
800+50*3

pnorm(1250,1500,250)
qnorm(0.95, 1500,250)
qnorm(0.15, 1500,250)











