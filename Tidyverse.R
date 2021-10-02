#### Tidyverse Practice ####


library(tidyverse)
library(DT)

#regular
mean(mtcars$mpg)

#tidy
mtcars$mpg %>% mean()

#add function
gpm <- function (mpg) {1/mpg} #check this code for function

#regular
round(mean(gpm(mtcars$mpg)), digits = 2)

#tidy
gpm(mtcars$mpg) %>% 
  mean() # how to round digits

################tutorial for tidyverse

#read in csv file
sgf <- read_csv("stiller_scales_data.csv")

#check out data
view(sgf)

DT::datatable(sgf)



