library(tidyverse)

# geom_bar computes on its own the counts
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

# Each geom has a default stat transform and each stat has a default geom.
# So they can be used interchangeably.
ggplot(diamonds) +
  stat_count(aes(x = cut))

# if you dont want to use a default stat transformation,
# you can specify your own variables using identity.
demo <- tribble(
  ~cut,        ~freq,
  "Fair",      1610,
  "Good",      4906,
  "Very Good", 12082,
  "Premium",   13791,
  "Ideal",     21551
)

# If you don't use identity, it throws you an error
ggplot(demo) +
  geom_bar(aes(cut, freq), stat = "identity")

# You can also display proportion instead of count
ggplot(diamonds) +
  geom_bar(aes(cut, ..prop.., group = 1))

# Using statistical summaries
ggplot(diamonds) +
  stat_summary(
    aes(cut, depth),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )

# ggplot provides over 20 stats to use. Take a look
# at ?stat_bin for example.

# TODO: 3.7.1 exercises