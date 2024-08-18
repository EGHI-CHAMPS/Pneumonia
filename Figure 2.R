library(ggplot2)
library(dplyr)

dat %>%
  ggplot(aes(y = reorder(value, n, sum), x = n, fill = Site)) +
  geom_col() +
  labs(x = "Number of deaths", y = "Pathogen") +
  scale_fill_manual(values = rev(paletteer_c("grDevices::Viridis", 4))) +
  facet_grid(type ~ location, scales = "free_y", space = 'free')