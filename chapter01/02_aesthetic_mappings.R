library(tidyverse)

# Adding dimensions to data using color
ggplot(mpg) +
  geom_point(aes(displ, hwy, color = class))

# Using size for a discrete variable is not advised.
ggplot(mpg) +
  geom_point(aes(displ, hwy, size = class))

# Using shape
ggplot(mpg) +
  geom_point(aes(displ, hwy, shape = class))

# Using alpha
ggplot(mpg) +
  geom_point(aes(displ, hwy, alpha = class))

# Manually assign aesthetics
ggplot(mpg) +
  geom_point(aes(displ, hwy), color = "blue")

# What’s gone wrong with this code? Why are the points not blue?
ggplot(data = mpg) +
geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))

# Which variables in mpg are categorical?
# Which variables are continuous?
summary(mpg)

# Map a continuous variable to color, size, and shape.
# How do these aesthetics behave differently for
# categorical vs. continuous variables?
ggplot(mpg) +
  geom_point(aes(year, class, color = displ, size = cyl, shape = cty))

# What happens if you map the same variable to multiple aesthetics?
ggplot(mpg) +
  geom_point(aes(displ, hwy, size = displ))

# What does the stroke aesthetic do? What shapes does it work with? (Hint: use ?geom_point)
ggplot(mpg) +
  geom_point(aes(displ, hwy, stroke = cyl))

# For shapes that have a border (like 21), you can colour the inside and
# outside separately. Use the stroke aesthetic to modify the width of the
# border
ggplot(mtcars, aes(wt, mpg)) +
  geom_point(shape = 21, colour = "black", fill = "white", size = 5, stroke = 5)

# What happens if you map an aesthetic to something other than a variable name, like aes(colour = displ < 5)?
ggplot(mpg) +
  geom_point(aes(displ, hwy, colour = displ < 5))
