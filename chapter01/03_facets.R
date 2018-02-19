library(tidyverse)

# Add facets combined with categorical variables
ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

# Two facets for two distinct categorical variables
ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)

# Omit one of the variables with a dot if you want
ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy)) +
  facet_grid(cyl ~ .)

# What happens if you facet on a continuous variable?
ggplot(mpg) +
  geom_point(aes(x = drv, y = hwy)) +
  facet_wrap(~ displ)

# What do the empty cells in plot with facet_grid(drv ~ cyl) mean?
ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)

# How do they relate to this plot?
ggplot(data = mpg) +
geom_point(mapping = aes(x = drv, y = cyl))

# What plots does the following code make? What does . do?
ggplot(data = mpg) +
geom_point(mapping = aes(x = displ, y = hwy)) +
facet_grid(drv ~ .)

ggplot(data = mpg) +
geom_point(mapping = aes(x = displ, y = hwy)) +
facet_grid(. ~ cyl)

# Take the first faceted plot in this section:
ggplot(data = mpg) +
geom_point(mapping = aes(x = displ, y = hwy)) +
facet_wrap(~ class, nrow = 2)

# What are the advantages to using faceting instead of the colour aesthetic?
## You can have a closer look at each discrete value of data

# What are the disadvantages?
## With many levels, the facet doesn't fit to screen

# How might the balance change if you had a larger dataset?
## Probably would go for colors or shapes

# Read ?facet_wrap. What does nrow do? What does ncol do?
?facet_wrap
## Defines number of rows or columns of the grid

# What other options control the layout of the individual panels?
## scales, shrink, switch, etc

# Why doesn’t facet_grid() have nrow and ncol argument?
## Because these are governed by the dimensions themselves

# When using facet_grid() you should usually put the variable
# with more unique levels in the columns. Why?
ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy)) +
  facet_grid(drv ~ class)

ggplot(mpg) +
  geom_point(aes(x = displ, y = hwy)) +
  facet_grid(class ~ drv)

## No idea why! But it really seems to fit better on screen