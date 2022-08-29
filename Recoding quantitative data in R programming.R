#Re-coding quantitative data ####
### make sure to install all the required packages 
pacman::p_load(magrittr, pacman, rio, tidyverse)

### reverse coding  using (n+1) - x
philant <- 1:20
print(philant)
22 - philant

### reverse coding  using n - x
princess <- 0:16
print(princess)
16 - princess


pat <- -10:10

0 - pat
pat * -1


### standidizing values with z-scores using scale 
?scale
philant <- matrix(1:20, ncol = 4)
print(philant)

### by centering the variables on thier respectivemeans 
scale(philant, scale = FALSE, center = TRUE)
### you realized that it takes all the center of the data and tell how far it 
### is from other variables 

### calculating the z scores (by default) And this gives the z scores 
scale(philant, center = TRUE, scale = TRUE) 

### By changing the scores to another distributiion, we have to convert it to 
### a z score and then multiply to change the sd and finally add to change the mean

## T scores 
princess <- philant %>% 
  scale() %>% # this converts each columns to z-score
  `*`(10) %>% # this multiplies all the values by 10 (so SD = 10)
  `+`(100) %>% # this adds 100 to all the values (so M = 50)
  print()
 
### Usually IQ tests are often standardized to mean = 100 and sd = 15
princess <- philant %>% 
  scale() %>% # this converts each columns to z-score
  `*`(15) %>% # this multiplies all the values by 10 (so SD = 15)
  `+`(100) %>% # this adds 100 to all the values (so M = 100)
  print()

