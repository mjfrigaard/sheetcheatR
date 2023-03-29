## code to prepare `mtv_music_artists` dataset goes here
require(vroom)
require(dplyr)
# source:
# https://gist.github.com/mbejda/9912f7a366c62c1f296c
page1 <-
  vroom::vroom(file = "https://gist.githubusercontent.com/mbejda/9912f7a366c62c1f296c/raw/dd94a25492b3062f4ca0dc2bb2cdf23fec0896ea/10000-MTV-Music-Artists-page-1.csv")

page2 <-
  vroom::vroom(file = "https://gist.githubusercontent.com/mbejda/9912f7a366c62c1f296c/raw/dd94a25492b3062f4ca0dc2bb2cdf23fec0896ea/10000-MTV-Music-Artists-page-2.csv")

page3 <-
  vroom::vroom(file = "https://gist.githubusercontent.com/mbejda/9912f7a366c62c1f296c/raw/dd94a25492b3062f4ca0dc2bb2cdf23fec0896ea/10000-MTV-Music-Artists-page-3.csv")

page4 <-
  vroom::vroom(file = "https://gist.githubusercontent.com/mbejda/9912f7a366c62c1f296c/raw/dd94a25492b3062f4ca0dc2bb2cdf23fec0896ea/10000-MTV-Music-Artists-page-4.csv")

mtv_music_artists <- dplyr::bind_rows(page1, page2, page3, page4)

usethis::use_data(mtv_music_artists, overwrite = TRUE)
