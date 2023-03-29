library(tidyverse)
library(datapasta)

tr <- tribble(~x, ~y,
              1, "a",
              2, "b",
              3, "c")
  datapasta::df_paste(tr)

df <- data.frame(x = c(1, 2, 3),
                 y = c("a", "b", "c"))

