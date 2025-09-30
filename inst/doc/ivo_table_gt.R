## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----example1-----------------------------------------------------------------
library(dplyr)
library(palmerpenguins)

penguins |> select(species, sex, island) |> ftable()

## ----example2-----------------------------------------------------------------
library(ivo.table)

penguins |> select(species, sex, island) |> ivo_table_gt()

## ----example4-----------------------------------------------------------------
penguins |>
  select(species, sex, island) |>
  ivo_table_gt(sums = c("cols", "rows"))

## ----example6-----------------------------------------------------------------
library(gt)
penguins |>
  select(species, sex, island) |>
  ivo_table_gt(color = "red",
               font_name = "Courier") |> 
  tab_style(style = list(cell_text(weight = "bold")),
                locations = cells_stub())

## ----example7-----------------------------------------------------------------
penguins |>
  select(species, sex, island) |>
  ivo_table_gt(caption = "A table with penguins in it") |> 
    tab_style(style = list(cell_fill(color = "darkgreen")),
                locations = cells_body(columns = 5, rows = 4))

## ----eval = FALSE-------------------------------------------------------------
# library(ggplot2)
# library(patchwork)
# 
# penguins_plot <- ggplot(penguins, aes(body_mass_g, fill = species)) +
#                     geom_density(alpha = 0.7) +
#                     theme(legend.position = "bottom")
# 
# penguins_table <- penguins |>
#                     select(species, sex, island) |>
#                     ivo_table_gt()
# 
# penguins_plot + penguins_table

