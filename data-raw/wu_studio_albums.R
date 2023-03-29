## code to prepare `wu_studio_albums` dataset goes here
album <- c("Enter the Wu-Tang (36 Chambers)",
            "Wu-Tang Forever", "The W",
            "Iron Flag", "8 Diagrams",
            "A Better Tomorrow",
            "Once Upon a Time in Shaolin")
album_year <- c(1993L, 1997L, 2000L, 2001L, 2007L, 2014L, 2015L)
wu_studio_albums <- matrix(
  data = c(album, album_year),
  ncol = 2,
  dimnames = list(c(1:7), c("album", "year"))
)
usethis::use_data(wu_studio_albums, overwrite = TRUE)
