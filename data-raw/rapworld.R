## code to prepare `rapworld` dataset goes here
# source: https://public.opendatasoft.com/explore/dataset/rapworld/
require(vroom)
rapworld <- vroom::vroom(file = "inst/extdata/rapworld.csv")
usethis::use_data(rapworld, overwrite = TRUE)
