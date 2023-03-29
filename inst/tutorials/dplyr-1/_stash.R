
# pkgs --------------------------------------------------------------------
library(tidyverse)
library(datapasta)
library(palmerpenguins)


# quantiles example -------------------------------------------------------
mtcars %>%
  group_by(cyl) %>%
  summarise(quantile = scales::percent(c(0.25, 0.5, 0.75)),
            mpg = quantile(mpg, c(0.25, 0.5, 0.75)))

# starwars data (groups) ---------------------------------------------------
starwars <- dplyr::starwars
sw_summary <- starwars |>
              dplyr::select(!where(is.list)) |>
              dplyr::select(name,
                            ht = height,
                            mass,
                            gender,
                            hair = hair_color,
                            eyes = eye_color,
                            home = homeworld,
                            species)



Z <- tribble(
   ~x, ~y,  ~z,
  "d",  4, "l",
  "d",  5, "m",
  "e",  6, "m"
)
l <- sum(4)
m <- sum(5, 6)

tibble(z = unique(Z$z),
       sumy = c(l, m))
