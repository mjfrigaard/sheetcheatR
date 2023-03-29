## code to prepare `wu_all_members` dataset goes here
rza <- list(
  member = "RZA",
  name = "Robert Fitzgerald Diggs",
  born = 1969L,
  city = "New York City",
  from = "(Brownsville) Brooklyn",
  alive = TRUE
)
gza <- list(
    member = "GZA",
    name = "Gary Eldridge Gric",
    born = 1966L,
    city = "New York City",
    from = "Brooklyn",
    alive = TRUE
  )
odb <- list(
  member = "ODB",
  name = "Russell Tyrone Jones",
  born = 1968L,
  city = "New York City",
  from = "(Fort Greene) Brooklyn",
  alive = FALSE
)
method_man <- list(
  member = "Method Man",
  name = "Clifford Smith, Jr.",
  born = 1971L,
  city = "Long Island",
  from = "Hempstead",
  alive = TRUE
)
raekwon <- list(
  member = "Raekwon",
  name = "Corey Woods",
  born = 1970L,
  city = "New York City",
  from = "(Brownsville) Brooklyn",
  alive = TRUE
)
ghostface_killah <- list(
    member = "Ghostface Killah",
    name = "Dennis Coles",
    born = 1970L,
    city = "New York City",
    from = "(Stapleton Houses) Staten Island",
    alive = TRUE
  )
inspectah_deck <- list(
  member = "Inspectah Deck",
  name = "Jason Richard Hunter",
  born = 1970L,
  city = "New York City",
  from = "Park Hill Projects, Clifton (Staten Island)",
  alive = TRUE
)
u_god <- list(
  member = "U-God",
  name = "Lamont Jody Hawkins",
  born = 1970L,
  city = "New York City",
  from = "(Brownsville) Brooklyn",
  alive = TRUE
)
masta_killa <- list(
  member = "Masta Killa",
  name = "Jamel Irief",
  born = 1969L,
  city = "New York City",
  from = "Brooklyn",
  alive = TRUE
)
cappadonna <- list(
  member = "Cappadonna",
  name = "Darryl Hill",
  born = 1968L,
  city = "New York City",
  from = "Staten Island",
  alive = TRUE
)
wu_all_members <- list(
  'rza' = rza, # 1
  'gza' = gza, # 2
  'odb' = odb, # 3
  'raekwon' = raekwon, # 4
  'method_man' = method_man, # 5
  'ghostface_killah' = ghostface_killah, # 6
  'inspectah_deck' = inspectah_deck, # 7
  'u_god' = u_god, # 8
  'masta_killa' = masta_killa, # 9
  'cappadonna' = cappadonna # 10
)

rm(rza, gza, odb, raekwon, method_man, ghostface_killah,
  inspectah_deck, u_god, masta_killa, cappadonna)
usethis::use_data(wu_all_members, overwrite = TRUE)
