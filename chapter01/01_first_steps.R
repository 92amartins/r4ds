library(tidyverse)

mpg

# Is there a relationship between size of engine and fuel consumption?
ggplot(mpg) +
  geom_point(aes(displ, hwy))

# Run ggplot(data = mpg). What do you see?
ggplot(mpg)

# How many rows are in mpg? How many columns?
nrow(mpg)
ncol(mpg)

# What does the drv variable describe? Read the help for ?mpg to find out.
?mpg

# Make a scatterplot of hwy vs cyl.
ggplot(mpg) +
  geom_point(aes(hwy, cyl))

# What happens if you make a scatterplot of class vs drv? Why is the plot not useful?
ggplot(mpg) +
  geom_point(aes(class, drv))
