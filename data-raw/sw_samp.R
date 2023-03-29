## code to prepare `sw_samp` dataset goes here
require(tibble)
sw_samp <- tibble::tibble(
  name = c("Wedge Antilles", "Lando Calrissian", "Mace Windu"),
  height = c(170L, 177L, 188L),
  homeworld = c("Corellia", "Socorro", "Haruun Kal"),
  films = list(
    c("The Empire Strikes Back", "Return of the Jedi", "A New Hope"),
    c("The Empire Strikes Back", "Return of the Jedi"),
    c("Attack of the Clones", "The Phantom Menace", "Revenge of the Sith"))
)
usethis::use_data(sw_samp, overwrite = TRUE)
