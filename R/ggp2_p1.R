# packages ----------------------------------------------------------------
require(learnr)
require(ggplot2)
require(palmerpenguins)
require(dplyr)
require(tidyr)
require(patchwork)
# data --------------------------------------------------------------------
penguins <- palmerpenguins::penguins
# labels -----
labels <- ggplot2::theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel")
#' Show geom_blank() graphs
#'
#' @return gg_a, gg_blnk
#' @export show_geom_blanks
#'
#' @import ggplot2
#' @import patchwork
#'
#' @examples # not run
#' show_geom_blanks()
show_geom_blanks <- function() {

    data_ranges <- data.frame(
      # add/subtract three years to either side of date
      x = c(min(ggplot2::economics$date) - 1095, max(ggplot2::economics$date) + 1095),
      # add/subtract 20% from unemploy
      y = c(min(ggplot2::economics$unemploy) * .80, max(ggplot2::economics$unemploy) * 1.20))

    # plot with x/y using data values
    gg_a <- ggplot(data = ggplot2::economics,
      mapping = aes(x = date, y = unemploy)) +
      geom_point() +
      labs(title = "orginal data", subtitle = " ") +
      theme(
        plot.title = element_text(size = 8, face = "bold"),
        plot.subtitle = element_text(size = 7, face = "italic"),
        plot.title.position = "panel"
      )
    # plot with x/y using data_ranges
    gg_blnk <- ggplot(data = ggplot2::economics,
      mapping = aes(x = date, y = unemploy)) +
      geom_point() +
      geom_blank(data = data_ranges, aes(x = x, y = y)) +
      labs(title = "geom_blank(data = data_ranges, aes(x = x, y = y))",
        subtitle = "data_ranges <- data.frame(x = c('1964-07-01', '2018-03-31'),
                          y = c(2148, 18422.4))") +
      theme(
        plot.title = element_text(size = 8, face = "bold"),
        plot.subtitle = element_text(size = 7, face = "italic"),
        plot.title.position = "panel"
      )
  gg_a / gg_blnk
}

#' Show expand_limits() graphs
#'
#' @return gg_exp_lmt, gg_blnk, gg_a
#' @export show_expand_limits
#'
#' @import ggplot2
#' @import patchwork
#'
#' @examples # not run
#' show_expand_limits()
show_expand_limits <- function() {

    data_ranges <- data.frame(
      # add/subtract three years to either side of date
      x = c(min(ggplot2::economics$date) - 1095, max(ggplot2::economics$date) + 1095),
      # add/subtract 20% from unemploy
      y = c(min(ggplot2::economics$unemploy) * .80, max(ggplot2::economics$unemploy) * 1.20))

  x_limits <- c(min(ggplot2::economics$date) - 1095, max(ggplot2::economics$date) + 1095)
  y_limits <- c(max(ggplot2::economics$unemploy) * .80, max(ggplot2::economics$unemploy) * 1.20)

 gg_a <- ggplot(data = ggplot2::economics,
   mapping = aes(x = date, y = unemploy)) +
   geom_point() +
   labs(title = "orginal data", subtitle = " ") +
   theme(
     plot.title = element_text(size = 8, face = "bold"),
     plot.subtitle = element_text(size = 7, face = "italic"),
     plot.title.position = "panel"
   )
 gg_exp_lmt <- ggplot(data = ggplot2::economics,
   mapping = aes(x = date, y = unemploy)) +
   geom_point() +
   expand_limits(# add limits
     x = x_limits,
     y = y_limits) +
   labs(title = "expand_limits(x = c('1964-07-01', '2018-03-31'),
                            y = c(12281.6, 18422.4)",
     subtitle = " ") +
   theme(
     plot.title = element_text(size = 8, face = "bold"),
     plot.subtitle = element_text(size = 7, face = "italic"),
     plot.title.position = "panel"
   )
    # plot with x/y using data_ranges
 gg_blnk <- ggplot(data = ggplot2::economics,
   mapping = aes(x = date, y = unemploy)) +
   geom_point() +
   geom_blank(data = data_ranges, aes(x = x, y = y)) +
   labs(title = "geom_blank(data = data_ranges, aes(x = x, y = y))",
     subtitle = "data_ranges <- data.frame(x = c('1964-07-01', '2018-03-31'),
                          y = c(2148, 18422.4))") +
   theme(
     plot.title = element_text(size = 8, face = "bold"),
     plot.subtitle = element_text(size = 7, face = "italic"),
     plot.title.position = "panel"
   )

gg_a / gg_exp_lmt / gg_blnk

}
#' Show geom_path() graphs
#'
#' @return gg_pth_butt_bevel, gg_pth_round_mitre
#' @export show_geom_path
#'
#' @import ggplot2
#' @importFrom patchwork plot_layout
#'
#' @examples # not run
#' show_geom_path()
show_geom_path <- function() {

  small_econ <- filter(ggplot2::economics,
    date <= "2014-08-01" & date >= "2014-03-01")

  gg_pth_butt_bevel <- ggplot(data = small_econ,
    mapping = aes(x = date, y = unemploy)) +
    geom_path(
      size = 3,
      lineend = "butt",
      linejoin = "bevel",
      linemitre = 1
    ) +
    labs(title = "geom_path(size = 3, lineend = 'butt', linejoin = 'bevel', linemitre = 1)",
      subtitle = " ") +
    theme(
      plot.title = element_text(size = 8, face = "bold"),
      plot.subtitle = element_text(size = 7, face = "italic"),
      plot.title.position = "panel"
    )
  gg_pth_round_mitre <- ggplot(data = small_econ,
    mapping = aes(x = date, y = unemploy)) +
    geom_path(
      size = 3,
      lineend = "round",
      linejoin = "mitre",
      linemitre = 1
    ) +
    labs(title = "geom_path(size = 3, lineend = 'round', linejoin = 'mitre', linemitre = 1)",
      subtitle = " ") +
    theme(
      plot.title = element_text(size = 8, face = "bold"),
      plot.subtitle = element_text(size = 7, face = "italic"),
      plot.title.position = "panel"
    )

  gg_pth_butt_bevel + gg_pth_round_mitre + patchwork::plot_layout(ncol = 1)

}

#' Show geom_poly() graphs
#'
#' @return gg_poly1, gg_poly2
#' @export show_geom_poly
#'
#' @import ggplot2
#' @import patchwork
#'
#' @examples # not run
#' show_geom_poly()
show_geom_poly <- function() {

  gg_poly1 <- ggplot(data = ggplot2::economics,
    mapping = aes(x = date, y = unemploy)) +
    geom_polygon(mapping = aes(alpha = 10), show.legend = FALSE) +
    labs(title = "geom_polygon(mapping = aes(alpha = 10), show.legend = FALSE)",
      subtile = " ") +
    theme(
      plot.title = element_text(size = 7, face = "bold"),
      plot.subtitle = element_text(size = 6, face = "italic"),
      plot.title.position = "panel")

  gg_poly2 <- ggplot(data = ggplot2::economics,
    mapping = aes(x = date, y = unemploy)) +
    geom_polygon(mapping = aes(alpha = 10), show.legend = FALSE) +
    geom_path(lineend = "butt",
      linejoin = "bevel",
      linemitre = 1) +
    labs(title = "geom_polygon(mapping = aes(alpha = 10), show.legend = FALSE)",
      subtitle = "geom_path(lineend = 'butt', linejoin = 'bevel', linemitre = 1)") +
    theme(
      plot.title = element_text(size = 7, face = "bold"),
      plot.subtitle = element_text(size = 6, face = "italic"),
      plot.title.position = "panel")

  gg_poly1 / gg_poly2

}

#' Show geom_ribbon() graphs
#'
#' @return gg_rib1, gg_rib2
#' @export show_geom_ribbon
#'
#' @import ggplot2
#' @import patchwork
#'
#' @examples # not run
#' show_geom_ribbon()
show_geom_ribbon <- function() {
  # get sd
unemp_sd <- sd(ggplot2::economics$unemploy)
# plot 1
gg_rib1 <- ggplot(data = ggplot2::economics,
  mapping = aes(x = date, y = unemploy)) +
  geom_ribbon(aes(ymin = unemploy - 900, ymax = unemploy + 900)) +
  labs(title = "geom_ribbon(aes(ymin = unemploy - 900, ymax = unemploy + 900))") +
  theme(
    plot.title = element_text(size = 7, face = "bold"),
    plot.subtitle = element_text(size = 6, face = "italic"),
    plot.title.position = "panel")
# plot 2
gg_rib2 <- ggplot(data = ggplot2::economics,
  mapping = aes(x = date, y = unemploy)) +
  geom_ribbon(aes(
    ymin = unemploy - unemp_sd,
    ymax = unemploy + unemp_sd,
    alpha = 50),
    show.legend = FALSE) +
  geom_path(color = "red") +
  labs(title = "unemp_sd <- sd(ggplot2::economics$unemploy)\n geom_ribbon(aes(ymin = unemploy - unemp_sd, ymax = unemploy + unemp_sd)) +",
    subtitle = "  geom_path(color = 'red'')") +
  theme(
    plot.title = element_text(size = 7, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "bold"),
    plot.title.position = "panel",
    plot.caption = element_text(size = 6))

  gg_rib1 / gg_rib2

}

#' Show geom_curve() graphs
#'
#' @return gg_point, gg_curve
#' @export show_geom_curve
#'
#' @import ggplot2
#' @import patchwork
#'
#' @examples # not run
#' show_geom_curve()
show_geom_curve <- function() {

  gg_point <- ggplot(data = ggplot2::seals,
    mapping = aes(x = long, y = lat)) +
    geom_point(size = 0.7) +
    labs(title = "Reference: geom_point()") +
    theme(
      plot.title = element_text(size = 8, face = "bold"),
      plot.subtitle = element_text(size = 7, face = "italic"),
      plot.title.position = "panel"
    )

  gg_curve <- ggplot(data = ggplot2::seals,
    mapping = aes(x = long, y = lat)) +
    geom_curve(aes(yend = lat + 1, xend = long + 1),
      curvature = 2,
      size = 0.2) +
    labs(title = "geom_curve(aes(yend = lat + 1, xend = long + 1),
                    curvature = 2)") +
    theme(
      plot.title = element_text(size = 8, face = "bold"),
      plot.subtitle = element_text(size = 7, face = "italic"),
      plot.title.position = "panel"
    )

  gg_point + gg_curve

}

#' Show geom_rect() graphs
#'
#' @return gg_point, gg_curve, gg_rect, gg_point_rect
#' @export show_geom_rect
#'
#' @import ggplot2
#' @import patchwork
#'
#' @examples # not run
#' show_geom_rect()
show_geom_rect <- function() {

gg_point <- ggplot(data = ggplot2::seals,
  mapping = aes(x = long, y = lat)) +
  geom_point(size = 0.7) +
  labs(title = "Reference: geom_point()") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel")

gg_curve <- ggplot(data = ggplot2::seals,
  mapping = aes(x = long, y = lat)) +
  geom_curve(aes(yend = lat + 1, xend = long + 1),
    curvature = 2,
    size = 0.2) +
  labs(title = "geom_curve(aes(yend = lat + 1, xend = long + 1))",
    subtitle = "curvature = 2") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel")

gg_rect <- ggplot(data = ggplot2::seals,
  mapping = aes(x = long, y = lat)) +
  geom_rect(aes(
    xmin = long,
    ymin = lat,
    xmax = long + 1,
    ymax = lat + 1)) +
  labs(title = "geom_rect()") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel")

gg_point_rect <- ggplot(data = ggplot2::seals,
  mapping = aes(x = long, y = lat)) +
  geom_rect(aes(
    xmin = long,
    ymin = lat,
    xmax = long + 1,
    ymax = lat + 1
  )) +
  geom_point(size = 0.2, color = "white") +
  labs(title = "geom_point() + geom_rect()") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )

  gg_point + gg_curve + gg_rect + gg_point_rect
}

#' Show geom_abline() graphs
#'
#' @return gg_penguins_abline, gg_penguins_smooth
#' @export show_ablines
#'
#' @import ggplot2
#' @import patchwork
#'
#' @examples # not run
#' show_ablines()
show_ablines <- function() {
  require(palmerpenguins)
  penguins <- palmerpenguins::penguins

  # store model results
  mod <- lm(bill_length_mm ~ flipper_length_mm,
            data = penguins)
  # get model coefficients
  mod_coeffs <- coef(mod)

gg_penguins_abline <- ggplot(data = penguins,
  mapping = aes(x = flipper_length_mm, y = bill_length_mm)) +
  geom_point(size = 0.4) +
  geom_abline(aes(intercept = mod_coeffs["(Intercept)"],
    slope = mod_coeffs["flipper_length_mm"])) +
  labs(title = "geom_abline(
                  aes(intercept = -7.2648678, slope = 0.2547682))") +
  theme(
    plot.title = element_text(size = 9, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "bold.italic"),
    plot.title.position = "panel"
  )

gg_penguins_smooth <- ggplot(data = penguins,
  mapping = aes(x = flipper_length_mm, y = bill_length_mm)) +
  geom_point(size = 0.4) +
  geom_smooth(method = "lm") +
  labs(title = "geom_smooth(method = 'lm')") +
  theme(
    plot.title = element_text(size = 9, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "bold.italic"),
    plot.title.position = "panel"
  )

  gg_penguins_abline / gg_penguins_smooth
}

#' Show geom_abline(), geom_hline(), geom_vline(), and geom_segment() graphs
#'
#' @return gg_abline, gg_hline, gg_vline, gg_segment
#' @export show_lines
#'
#' @import ggplot2
#' @import patchwork
#'
#' @examples # not run
#' show_lines()
show_lines <- function() {

gg_abline <- ggplot(data = ggplot2::seals,
  mapping = aes(x = long, y = lat)) +
  geom_abline(aes(intercept = 0, slope = 1), size = 0.2) +
  labs(title = "geom_abline()") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel")

gg_hline <- ggplot(data = ggplot2::seals,
  mapping = aes(x = long, y = lat)) +
  geom_hline(aes(yintercept = lat), size = 0.2) +
  labs(title = "geom_hline()") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel")

gg_vline <- ggplot(data = ggplot2::seals,
  mapping = aes(x = long, y = lat)) +
  geom_vline(aes(xintercept = long), size = 0.2) +
  labs(title = "geom_vline()") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel")

gg_segment <- ggplot(data = ggplot2::seals,
  mapping = aes(x = long, y = lat)) +
  geom_segment(aes(yend = lat + 1, xend = long + 1), size = 0.2) +
  labs(title = "geom_segment()") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel")

  gg_abline + gg_hline +
    gg_vline + gg_segment +
    patchwork::plot_layout(ncol = 2)
}

#' Show geom_spoke() graphs (rnorm)
#'
#' @return gg_spoke_a, gg_spoke_b, gg_spoke_c, gg_spoke_d
#' @export show_rnorm_spokes
#'
#' @import ggplot2
#' @import patchwork
#'
#' @examples # not run
#' show_rnorm_spokes()
show_rnorm_spokes <- function() {

gg_spoke_a <- ggplot(data = ggplot2::seals,
  mapping = aes(x = long, y = lat)) +
  geom_spoke(aes(angle = rnorm(
    n = 1155, mean = 1, sd = 0
  ), radius = 1),
    size = 0.3) +
  labs(title = "angle = rnorm(n = 1155, mean = 1, sd = 0)",
    subtitle = "radius = 1") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel")

gg_spoke_b <- ggplot(data = ggplot2::seals,
  mapping = aes(x = long, y = lat)) +
  geom_spoke(aes(angle = rnorm(
    n = 1155, mean = 1, sd = 0.1
  ), radius = 1),
    size = 0.3) +
  labs(title = "angle = rnorm(n = 1155, mean = 1, sd = 0.01)",
    subtitle = "radius = 1") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel")

gg_spoke_c <- ggplot(data = ggplot2::seals,
  mapping = aes(x = long, y = lat)) +
  geom_spoke(aes(angle = rnorm(
    n = 1155, mean = 1, sd = 1
  ), radius = 1),
    size = 0.3) +
  labs(title = "angle = rnorm(n = 1155, mean = 1, sd = 1)",
    subtitle = "radius = 1") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel")

gg_spoke_d <- ggplot(data = ggplot2::seals,
  mapping = aes(x = long, y = lat)) +
  geom_spoke(aes(angle = rnorm(
    n = 1155, mean = 1, sd = 10
  ), radius = 1),
    size = 0.3) +
  labs(title = "angle = rnorm(n = 1155, mean = 1, sd = 10)",
    subtitle = "radius = 1") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )

  gg_spoke_a / gg_spoke_b / gg_spoke_c / gg_spoke_d + patchwork::plot_layout(ncol = 2)

}
#' Show geom_spoke() graphs (rep)
#'
#' @return gg_spoke_1, gg_spoke_2, gg_spoke_3, gg_spoke_4
#' @export show_rep_spokes
#'
#' @import ggplot2
#' @import patchwork
#'
#' @examples # not run
#' show_rep_spokes()
show_rep_spokes <- function() {

gg_spoke_1 <- ggplot(data = ggplot2::seals,
  mapping = aes(x = long, y = lat)) +
  geom_spoke(aes(angle = rep(1, times = 1155), radius = 10), size = 0.15) +
  labs(title = "angle = rep(1, times = 1155)", subtitle = "radius = 10") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )

gg_spoke_2 <- ggplot(data = ggplot2::seals,
  mapping = aes(x = long, y = lat)) +
  geom_spoke(aes(angle = rep(2, times = 1155), radius = 10), size = 0.15) +
  labs(title = "angle = rep(2, times = 1155)", subtitle = "radius = 10") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )

gg_spoke_3 <- ggplot(data = ggplot2::seals,
  mapping = aes(x = long, y = lat)) +
  geom_spoke(aes(angle = rep(3, times = 1155), radius = 10), size = 0.15) +
  labs(title = "angle = rep(3, times = 1155)", subtitle = "radius = 10") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )

gg_spoke_4 <- ggplot(data = ggplot2::seals,
  mapping = aes(x = long, y = lat)) +
  geom_spoke(aes(angle = rep(4, times = 1155), radius = 10), size = 0.15) +
  labs(title = "angle = rep(4, times = 1155)", subtitle = "radius = 10") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )

  gg_spoke_1 / gg_spoke_2 / gg_spoke_3 / gg_spoke_4 +
    patchwork::plot_layout(ncol = 2)

}
#' Show geom_area() graphs
#'
#' @return gg_area_b15, gg_area_b30 , gg_area_b45, gg_area_bw1, gg_area_bw2,
#'     gg_area_bw3
#' @export show_area_bins
#'
#' @import ggplot2
#' @import patchwork
#'
#' @examples # not run
#' show_area_bins()
show_area_bins <- function() {

gg_area_b15 <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
  geom_area(stat = "bin", bins = 15) +
  labs(title = "bins = 15") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )
gg_area_b30 <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
  geom_area(stat = "bin", bins = 30) +
  labs(title = "bins = 30") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )
gg_area_b45 <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
  geom_area(stat = "bin", bins = 45) +
  labs(title = "bins = 45") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )
gg_area_bw1 <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
  geom_area(stat = "bin", binwidth = 1) +
  labs(title = "binwidth = 1") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )
gg_area_bw2 <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
  geom_area(stat = "bin", binwidth = 2) +
  labs(title = "binwidth = 2") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )
gg_area_bw3 <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
  geom_area(stat = "bin", binwidth = 3) +
  labs(title = "binwidth = 3") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )

  gg_area_b15 + gg_area_b30 + gg_area_b45 +
    gg_area_bw1 + gg_area_bw2 + gg_area_bw3 +
    patchwork::plot_layout(ncol = 3)

}
#' Show geom_density() graphs
#'
#' @return gaussian, biweight, cosine, optcosine
#' @export show_densities
#'
#' @import ggplot2
#' @import patchwork
#'
#' @examples # not run
#' show_densities()
show_densities <- function() {

gaussian <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
  geom_density(kernel = "gaussian") +
  labs(title = "kernel = 'gaussian'") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )

biweight <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
  geom_density(kernel = "biweight") +
  labs(title = "kernel = 'biweight'") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )

cosine <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
  geom_density(kernel = "cosine")  +
  labs(title = "kernel = 'cosine'") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )

optcosine <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
  geom_density(kernel = "optcosine") +
  labs(title = "kernel = 'optcosine'") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )

  gaussian + biweight + cosine + optcosine + patchwork::plot_layout(ncol = 2)

}
#' Show geom_dotplot() graphs
#'
#' @return dotdensity, histodot
#' @export show_compare_dots
#'
#' @import ggplot2
#' @import patchwork
#'
#' @examples # not run
#' show_compare_dots()
show_compare_dots <- function() {

dotdensity <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
  geom_dotplot(method = "dotdensity",
    binwidth = 0.6,
    dotsize = 0.35) +
  scale_y_continuous(NULL, breaks = NULL) +
  labs(title = "method = 'dotdensity', binwidth = 0.6") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )

histodot <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
  geom_dotplot(method = "histodot",
    binwidth = 0.6,
    dotsize = 0.35) +
  scale_y_continuous(NULL, breaks = NULL) +
  labs(title = "method = 'histodot', binwidth = 0.6") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )

  dotdensity + histodot + patchwork::plot_layout(ncol = 1)

}
#' Show geom_dotplot() binning methods
#'
#' @return cyan, yellow, both_dotplots
#' @export show_dotplot_bin_methods
#'
#' @import ggplot2
#' @import patchwork
#'
#' @examples # not run
#' show_dotplot_bin_methods()
show_dotplot_bin_methods <- function() {

cyan <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
  geom_dotplot(
    method = "histodot",
    binwidth = 0.6,
    fill = "#00ffff",
    alpha = 1 / 2,
    dotsize = 0.8
  ) +
  scale_y_continuous(NULL, breaks = NULL) +
  labs(title = "method = 'histodot', binwidth = 0.6") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )

yellow <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
  geom_dotplot(
    method = "dotdensity",
    binwidth = 0.6,
    fill = "#ffd319",
    alpha = 1 / 2,
    dotsize = 0.8
  ) +
  scale_y_continuous(NULL, breaks = NULL) +
  labs(title = "method = 'dotdensity', binwidth = 0.6") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )

both_dotplots <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
  geom_dotplot(
    method = "histodot",
    binwidth = 0.6,
    fill = "#00ffff",
    alpha = 1 / 2,
    dotsize = 1.3
  ) +
  geom_dotplot(
    method = "dotdensity",
    binwidth = 0.6,
    fill = "#ffd319",
    alpha = 1 / 2,
    dotsize = 1.3
  ) +
  scale_y_continuous(NULL, breaks = NULL) +
  labs(title = "method = 'histodot' + method = 'dotdensity' (binwidth = 0.6)") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 7, face = "italic"),
    plot.title.position = "panel"
  )

  cyan / yellow  | both_dotplots
}
#' Show bindwidth comparisons
#'
#' @return gg_dotplot, gg_freqpoly, gg_histogram
#' @export show_compare_binwidth
#'
#' @import ggplot2
#' @import patchwork
#'
#' @examples # not run
#' show_compare_binwidth()
show_compare_binwidth <- function() {
  gg_dotplot <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
    geom_dotplot(
      binwidth = 3,
      dotsize = 0.22,
      stackratio = 0.99,
      alpha = 0.8
    ) +
    labs(title = "geom_dotplot(binwidth = 4)") +
    theme(plot.title = element_text(size = 8, face = "bold"),
      plot.title.position = "panel")

  gg_freqpoly <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
    geom_freqpoly(binwidth = 3,
      size = 1.5,
      alpha = 0.8) +
    labs(title = "gg_freqpoly(binwidth = 3)") +
    theme(plot.title = element_text(size = 8, face = "bold"),
      plot.title.position = "panel")

  gg_histogram <- ggplot(data = ggplot2::mpg, mapping = aes(x = hwy)) +
    geom_histogram(binwidth = 3, alpha = 0.8) +
    labs(title = "geom_histogram(binwidth = 3)") +
    theme(plot.title = element_text(size = 8, face = "bold"),
      plot.title.position = "panel")

  gg_dotplot | gg_freqpoly / gg_histogram

}
#' Show geom_qq_line() &  geom_qq_line() graphs
#'
#' @return qq_rnorm, qq_rpois, qq_weibull, qq_cauchy
#' @export show_compare_qq
#'
#' @import ggplot2
#' @import patchwork
#'
#' @examples # not run
#' show_compare_qq()
show_compare_qq <- function() {

qqplots_data <- tibble::tibble(norm = rnorm(n = 100, mean = 0, sd = 1),
                       pois = rpois(n = 100, lambda = 4),
                       weibull = rweibull(n = 100, shape = 1 , scale = 10),
                       cauchy = rcauchy(n = 100, location = 0, scale = 1))
qq_rnorm <- ggplot(data = qqplots_data) +
  geom_qq(aes(sample = norm), size = 0.75, alpha = 0.7) +
  geom_qq_line(aes(sample = norm)) +
  labs(title = "Random normal distribution with mean and sd",
    subtitle = "mean = 0, sd = 1") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 8, face = "bold.italic"),
    plot.title.position = "panel")
qq_rpois <- ggplot(data = qqplots_data) +
  geom_qq(aes(sample = pois), size = 0.75, alpha = 0.7) +
  geom_qq_line(aes(sample = pois)) +
  labs(title = "Poisson distribution with parameter lambda",
    subtitle = "lambda = 4") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 8, face = "bold.italic"),
    plot.title.position = "panel")

qq_weibull <- ggplot(data = qqplots_data) +
  geom_qq(aes(sample = weibull), size = 0.75, alpha = 0.7) +
  geom_qq_line(aes(sample = weibull)) +
  labs(title = "Weibull distribution with parameters shape and scale",
    subtitle = "shape = 1 , scale = 10") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 8, face = "bold.italic"),
    plot.title.position = "panel")

qq_cauchy <- ggplot(data = qqplots_data) +
  geom_qq(aes(sample = cauchy), size = 0.75, alpha = 0.7) +
  geom_qq_line(aes(sample = cauchy)) +
  labs(title = "Cauchy distribution with location parameters location and scale",
    subtitle = "location = 0, scale = 1") +
  theme(
    plot.title = element_text(size = 8, face = "bold"),
    plot.subtitle = element_text(size = 8, face = "bold.italic"),
    plot.title.position = "panel")

    qq_rnorm + qq_rpois + qq_weibull + qq_cauchy + patchwork::plot_layout(ncol = 2)
}
