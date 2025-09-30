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

penguins |> select(species, sex, island) |> ivo_table()

## ----example3, eval = FALSE---------------------------------------------------
# penguins |>
#   select(species, sex, island) |>
#   ivo_table() |>
#   flextable::save_as_docx(path = "example_table.docx")

## ----example4-----------------------------------------------------------------
penguins |>
  select(species, sex, island) |>
  ivo_table(colsums = TRUE,
            rowsums = TRUE)

## ----example5-----------------------------------------------------------------
penguins |>
  select(species, sex, island) |>
  ivo_table(percent_by = "col")

## ----example6-----------------------------------------------------------------
penguins |>
  select(species, sex, island) |>
  ivo_table(color = "red",
            font_name = "Courier",
            bold_cols = 1)

## ----example7-----------------------------------------------------------------
penguins |>
  select(species, sex, island) |>
  ivo_table(caption = "A table with penguins in it",
            highlight_cols = 3,
            highlight_rows = 4)

## ----example8-----------------------------------------------------------------
penguins |>
  select(species, sex, island) |>
  ivo_table(color = "darkblue") |> 
  flextable::fontsize(size = 8, part = "body") |> 
  flextable::fontsize(size = 12, part = "header") |> 
  flextable::bg(bg = "pink", part = "all")

