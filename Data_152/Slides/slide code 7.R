library(tidyverse)

p=0.5

n=2413

SE_n = sqrt(p*(1-p)/n)

SE_n


prop.test(x=1327,n=2413,p=0.50, alternative = "greater")

prop.test(x=305, n = 801, p=0.28, alternative = "greater")

x_c=154
n_c=438
phat_c=x_c/n_c
x_nc=132
n_nc=389
phat_nc=x_nc/n_nc
phat_c-phat_nc
p_pooled = (x_c+x_nc)/(n_c+n_nc)
phat_c
phat_nc
p_pooled
SE = sqrt(
  p_pooled*(1- p_pooled)/n_c +
  p_pooled*(1- p_pooled)/n_nc
)
library(ggfortify)
ggdistribution(
  dnorm,
  x = seq(-0.10,0.10,0.001),
  mean=0,
  sd=SE
)+
  geom_vline(xintercept = 0.0123,
  color= "maroon3",
  linetype = "dashed"
)+ theme_bw()

prop.test(
  x=c(x_c, x_nc),
  n= c(n_c, n_nc),
  alternative = "two.sided"
)







