## code to prepare `sw_groups` dataset goes here
require(tibble)
require(dplyr)
require(tidyr)
# starwars data (groups)
# starwars <- dplyr::starwars
# sw_groups <- starwars |>
#             dplyr::select(!where(is.list)) |>
#             dplyr::select(name,
#                           ht = height,
#                           mass,
#                           sex,
#                           home = homeworld,
#                           species) |>
#             tidyr::drop_na()
sw_groups <- tibble::tribble(
                    ~name,  ~ht, ~mass,             ~sex,            ~home,       ~species,
         "Luke Skywalker", 172L,    77,           "male",       "Tatooine",        "Human",
                  "C-3PO", 167L,    75,           "none",       "Tatooine",        "Droid",
                  "R2-D2",  96L,    32,           "none",          "Naboo",        "Droid",
            "Darth Vader", 202L,   136,           "male",       "Tatooine",        "Human",
            "Leia Organa", 150L,    49,         "female",       "Alderaan",        "Human",
              "Owen Lars", 178L,   120,           "male",       "Tatooine",        "Human",
     "Beru Whitesun lars", 165L,    75,         "female",       "Tatooine",        "Human",
                  "R5-D4",  97L,    32,           "none",       "Tatooine",        "Droid",
      "Biggs Darklighter", 183L,    84,           "male",       "Tatooine",        "Human",
         "Obi-Wan Kenobi", 182L,    77,           "male",        "Stewjon",        "Human",
       "Anakin Skywalker", 188L,    84,           "male",       "Tatooine",        "Human",
              "Chewbacca", 228L,   112,           "male",       "Kashyyyk",      "Wookiee",
               "Han Solo", 180L,    80,           "male",       "Corellia",        "Human",
                 "Greedo", 173L,    74,           "male",          "Rodia",       "Rodian",
  "Jabba Desilijic Tiure", 175L,  1358, "hermaphroditic",      "Nal Hutta",         "Hutt",
         "Wedge Antilles", 170L,    77,           "male",       "Corellia",        "Human",
       "Jek Tono Porkins", 180L,   110,           "male",     "Bestine IV",        "Human",
              "Palpatine", 170L,    75,           "male",          "Naboo",        "Human",
              "Boba Fett", 183L,  78.2,           "male",         "Kamino",        "Human",
                  "Bossk", 190L,   113,           "male",      "Trandosha",   "Trandoshan",
       "Lando Calrissian", 177L,    79,           "male",        "Socorro",        "Human",
                  "Lobot", 175L,    79,           "male",         "Bespin",        "Human",
                 "Ackbar", 180L,    83,           "male",       "Mon Cala", "Mon Calamari",
  "Wicket Systri Warrick",  88L,    20,           "male",          "Endor",         "Ewok",
              "Nien Nunb", 160L,    68,           "male",        "Sullust",    "Sullustan",
            "Nute Gunray", 191L,    90,           "male", "Cato Neimoidia",    "Neimodian",
          "Jar Jar Binks", 196L,    66,           "male",          "Naboo",       "Gungan",
           "Roos Tarpals", 224L,    82,           "male",          "Naboo",       "Gungan",
                "Sebulba", 112L,    40,           "male",      "Malastare",          "Dug",
             "Darth Maul", 175L,    80,           "male",       "Dathomir",       "Zabrak",
            "Ayla Secura", 178L,    55,         "female",         "Ryloth",      "Twi'lek",
               "Dud Bolt",  94L,    45,           "male",        "Vulpter",   "Vulptereen",
         "Ben Quadinaros", 163L,    65,           "male",           "Tund",        "Toong",
             "Mace Windu", 188L,    84,           "male",     "Haruun Kal",        "Human",
           "Ki-Adi-Mundi", 198L,    82,           "male",          "Cerea",       "Cerean",
              "Kit Fisto", 196L,    87,           "male",    "Glee Anselm",     "Nautolan",
             "Adi Gallia", 184L,    50,         "female",      "Coruscant",   "Tholothian",
               "Plo Koon", 188L,    80,           "male",          "Dorin",      "Kel Dor",
           "Gregar Typho", 185L,    85,           "male",          "Naboo",        "Human",
      "Poggle the Lesser", 183L,    80,           "male",       "Geonosis",    "Geonosian",
        "Luminara Unduli", 170L,  56.2,         "female",         "Mirial",     "Mirialan",
          "Barriss Offee", 166L,    50,         "female",         "Mirial",     "Mirialan",
                  "Dooku", 193L,    80,           "male",        "Serenno",        "Human",
             "Jango Fett", 183L,    79,           "male",   "Concord Dawn",        "Human",
             "Zam Wesell", 168L,    55,         "female",          "Zolan",     "Clawdite",
        "Dexter Jettster", 198L,   102,           "male",           "Ojom",     "Besalisk",
                "Lama Su", 229L,    88,           "male",         "Kamino",     "Kaminoan",
          "Ratts Tyerell",  79L,    15,           "male",    "Aleen Minor",       "Aleena",
             "Wat Tambor", 193L,    48,           "male",          "Skako",      "Skakoan",
               "Shaak Ti", 178L,    57,         "female",          "Shili",      "Togruta",
               "Grievous", 216L,   159,           "male",          "Kalee",      "Kaleesh",
                "Tarfful", 234L,   136,           "male",       "Kashyyyk",      "Wookiee",
        "Raymus Antilles", 188L,    79,           "male",       "Alderaan",        "Human",
             "Tion Medon", 206L,    80,           "male",         "Utapau",       "Pau'an",
          "Padmé Amidala", 165L,    45,         "female",          "Naboo",        "Human"
  )
usethis::use_data(sw_groups, overwrite = TRUE)
