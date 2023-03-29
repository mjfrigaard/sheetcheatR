## code to prepare `wu_og_members` dataset goes here
wu_og_members <- list(
  member = c(
    "RZA",
    "GZA",
    "ODB",
    "Method Man",
    "Raekwon",
    "Ghostface Killah",
    "Inspectah Deck",
    "U-God",
    "Masta Killa"
  ),
  name = c(
    "Robert Fitzgerald Diggs",
    "Gary Eldridge Gric",
    "Russell Tyrone Jones",
    "Clifford Smith, Jr.",
    "Corey Woods",
    "Dennis Coles",
    "Jason Richard Hunter",
    "Lamont Jody Hawkins",
    "Jamel Irief"
  ),
  born = c(1969L, 1966L, 1968L, 1971L, 1970L,
    1970L, 1970L, 1970L, 1969L),
  city = c(
    "New York City",
    "New York City",
    "New York City",
    "Hempstead, Long Island",
    "New York City",
    "Staten Island, New York City",
    "New York City",
    "New York City",
    "New York City"
  ),
  alive = c(TRUE, TRUE, FALSE, TRUE, TRUE,
    TRUE, TRUE, TRUE, TRUE)
)
usethis::use_data(wu_og_members, overwrite = TRUE)
