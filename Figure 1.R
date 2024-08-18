library(ggplot2)
library(dplyr)

dat %>%
  ggplot(aes(y = value, x = n, fill = age.cat)) +
  geom_col() +
  scale_y_discrete(expand = c(0, 0)) +
  scale_x_continuous(expand = expansion(mult = c(0, .02))) +
  labs(x = "Number of deaths", y = "Cause of death") +
  scale_fill_manual(name = "Recommendation", values = rev(c("#ee9c9f", "#9e9da0", '#8fd2b2'))) +
  facet_grid(location.label ~ type) 