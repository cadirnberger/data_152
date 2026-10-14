library(tidyverse)
1/0.372

dgeom(2,0.372)

pgeom(2,0.372)



1-pgeom(2,0.372)
dgeom(4,0.04)
dgeom(10,0.04)
1/0.04

#1. What's the probability he makes the first 3 pointer he shoots?
# P(X=1) => 0 failures
  dgeom(0,0.372)
#2. What's the probability the first 3 pointer makes is his second shot?
  # P(X=2) => 1 failure
  dgeom(1,0.372)
#3. His 3rd shot?
  # P(X=3) => 2 failures
  dgeom(2,0.372)
#4. What is the probability that he makes his first 3 pointer within the first 3 shots?
  # P(X≤3) => no more than 2 failures
  pgeom(2,0.372)
#5. What is the probability that he doesn’t make a 3 pointer within the first 3 shots?
  # P(X>3)=1-P(X≤3)
  1-pgeom(2,0.372)
  
#dbinom(x, n, p), pbinom(x, n, p)
#1. What is the probability he makes exactly 4shots?
  # P(X=4)
  dbinom(4,size=10,prob=0.372)
#2. What is the probability he makes no more than 4 shots?
  # P(X≤4)
  pbinom(4, size=10,prob=0.372)
#3. What is the probability he makes more than 4shots?
  # P(X>4)
  1-pbinom(4, size=10,prob=0.372)
  
  
#1. p(x=2) n=32 left handed
  dbinom(2,32,0.10)
#2.p(x>=2)
1 - pbinom(1,32,0.10)
# P(X=4)


#P(X=k) dpois(k,λ)  P(X≤k) ppois(k,λ)
dpois(4,lambda=2.67)
# What's the probability he allows AT LEAST 4 runs in 9 innings? P(X>=4)
1-ppois(3,lambda=2.67)
#6 innings
dpois(4,1.78)
# coffee shop serves an average of 75 customers per hour during the morning rush.
# Let X=the # of customers arriving within a one hour duration of the day
# What is the probability this coffee shop serving fewer than 70 customers in an hour?
 ppois(69,75)
# What is the probability this coffee shop will serve fewer than 100 customers over 2 hours?
 ppois(99,150)
# What are we assuming in the previous calculation?
  
  
  
  
  
  
# test next week:
#- paper test
#- cheat sheet: 8x11 front back
# part 1 : data collection: obs study vs Exp - factors, level response var, nuisance val
#- sources of bias
#- SRS,stratified,cluster,systematic
# part 2: - rules
#- applying
#- ind vs mutual exclusive
# part 3: - geometric
#- binomial
  #p(x=k)= (1-p)^k-1*p
#- poisson
#mc[22]
#matching[66]
#prob&random vars[66]
 
#data sci process:
  #-state obj
  #-map it out
  #-data collection: observational: under-coverage,affirmation bias(positive bias) observer bias
                                  #social bias, confirmation bias, non-response bias, response bias,
                                  #loaded, leading,double barrel,
                                  #vs experiments: experimental units/subject, 
                                      #factors/levels, uncontrollable/nuisance val,
                                      #response var, blocking, 
                                      #DOE(repeatable, blindness,control/baseline,solution,
                                      #randomize,center-point,blocking)
                                      #full factorial->add center,default->randomize->blocks->replicates
  #-data wrangling
  #-EDA
  #-modeling
  #-communication
#prob:
  #1 0<= m =< 1
  #2 p(sample space) = 1
  #3 p(a or b) = p(a) + p(b) if mut. excl
  #4 p(a and b) = p(a) * p(b) ind
  #5 p(not a) = p(a^c) = 1 - p(a)
 
#x|sample space|
#p(X)| | | | | |
#E(x) "expected", "mean, "avg"
#E(x) = sigma(x*p(x))
#V(x) = sigma(X−E(X)2 * p(X=x))
#SD(x)= √V(x)
#1 x = trial until 1st success
  #x~geo(p)
  #p(X=k)= (1- p)^k * p
#2 x= $successes in n trial
  #x~bin(n trail, p = prob of success)
  #p(X=k)= (n\k)*p^k*(1-p)^n-k
  #(n\k)= n!/k!*(n-k)!
 #x = # trials
 #p(x<=5)
 #pgeom(4,__)
 #geom: E(x) = 1/p
 #bin:E(x)=n*p
 
  

 
 
 
 
 
 
 
 