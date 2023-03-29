## code to prepare `wu_df` dataset goes here
wu_df <- data.frame(
            member = c("RZA","GZA","ODB",
                       "Method Man","Raekwon","Ghostface Killah","Inspectah Deck",
                       "U-God","Masta Killa","Cappadonna"),
              name = c("Robert Fitzgerald Diggs",
                       "Gary Eldridge Gric","Russell Tyrone Jones",
                       "Clifford Smith, Jr.","Corey Woods","Dennis Coles",
                       "Jason Richard Hunter","Lamont Jody Hawkins","Jamel Irief","Darryl Hill"),
              born = c(1969L,1966L,1968L,1971L,
                       1970L,1970L,1970L,1970L,1969L,1968L),
              from = c("(Brownsville) Brooklyn",
                       "Brooklyn","(Fort Greene) Brooklyn","Hempstead",
                       "(Brownsville) Brooklyn","(Stapleton Houses) Staten Island",
                       "Park Hill Projects, Clifton (Staten Island)",
                       "(Brownsville) Brooklyn","Brooklyn","Staten Island"),
             alive = c(TRUE,TRUE,FALSE,TRUE,TRUE,
                       TRUE,TRUE,TRUE,TRUE,TRUE)
)
usethis::use_data(wu_df, overwrite = TRUE)
