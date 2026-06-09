# R Backend Quick-Start

Optional backend. ggplot2 + patchwork + svglite.

## Environment check

```r
library(ggplot2)
library(patchwork)
```

## Default theme

```r
theme_cqn <- theme_minimal(base_size = 11) +
  theme(
    panel.grid.minor = element_blank(),
    legend.position = "bottom",
    plot.background = element_rect(fill = "white", colour = NA)
  )
```

## Export

```r
# Engineering report
ggsave("figure.png", width = 6, height = 4, dpi = 200)

# High-impact paper
svglite::svglite("figure.svg", width = 6, height = 4)
print(plot)
dev.off()
```

## Note

R is an optional backend. If R is unavailable, use Python. The skill
must not be blocked by R availability.
