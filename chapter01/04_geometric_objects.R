library(tidyverse)

# Same everything, different geoms
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

# Different geoms allow different aesthetics
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

# Overlaying geoms
ggplot(data = mpg) +
  geom_point(aes(displ, hwy, color = drv)) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv, color = drv))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

# Overlaying with global mappings
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  geom_smooth()

# Overriding mappings
ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = class)) +
  geom_smooth()

# Specify subsets of data
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE)

# Using group to "facet" plots
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

ggplot(data = mpg) +
  geom_smooth(
    mapping = aes(x = displ, y = hwy, color = drv),
    show.legend = FALSE
  )

# What geom would you use to draw a line chart?
ggplot(mpg) +
  geom_line(aes(x = displ, y = hwy))

# A boxplot?
ggplot(mpg) +
  geom_boxplot(aes(x = class, y = hwy))

# A histogram?
ggplot(mpg) +
  geom_bar(aes(x = class))

# An area chart?
ggplot(mpg) +
  geom_area(aes(x = displ, y = hwy))

# Run this code in your head and predict what the output will look like.
# Then, run the code in R and check your predictions.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  geom_smooth(se = FALSE)

# What does show.legend = FALSE do? What happens if you remove it?
## Removes legend. If you remove it shows again.

# Why do you think I used it earlier in the chapter?
## To supress legends.

# What does the se argument to geom_smooth() do?
## Shows confidence levels around the smooth line

# Will these two graphs look different? Why/why not?
## Not different. They are just repeating mappings.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

ggplot() +
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_smooth(data = mpg, mapping = aes(x = displ, y = hwy))

# Recreate the R code necessary to generate the following graphs...
# 1st graph
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  geom_smooth(se = FALSE)

# 2nd graph
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  geom_smooth(aes(group = drv), se = FALSE)

# 3rd graph
ggplot(mpg, aes(displ, hwy, color = drv)) +
  geom_point() +
  geom_smooth(se = FALSE)

# 4th graph
ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = drv)) +
  geom_smooth(se = FALSE)

# 5th graph
ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = drv)) +
  geom_smooth(aes(linetype = drv), se = FALSE)

# 6th graph
ggplot(mpg, aes(displ, hwy, fill = drv)) +
  geom_point(shape = 21, size = 5, stroke = 2, color = "white")
