#' Get vector info
#'
#' @param x any vector (atomic or S3)
#' @importFrom glue glue
#'
#' @return a list of glue::glue() statements
#' @export vector_info
#'
#' @description vector_info(x) will return outputs from the following functions:
#'     mode(x), class(x), typeof(x), attributes(names(x)), attributes(x).
#'
#' @examples # not run
#' require(purrr)
#' log_vec <- c(TRUE, FALSE, TRUE, FALSE)
#' int_vec <- seq(1:4)
#' dbl_vec <- 1.1:4.1
#' chr_vec <- c("a", "b", "c", "d")
#' dat_vec <- c(Sys.Date(),
#'   Sys.Date() + 1,
#'   Sys.Date() + 2,
#'   Sys.Date() + 3)
#' dtt_vec <- c(Sys.time(),
#'   Sys.time() + 86400,
#'   Sys.time() + (2 * 86400),
#'   Sys.time() + (3 * 86400))
#' dft_vec <- c(
#'   difftime(
#'     time1 = Sys.time(),
#'     time2 = Sys.time() + (2 * 86400),
#'     units = "days"
#'   ),
#'   difftime(
#'     time1 = Sys.time(),
#'     time2 = Sys.time() + (3 * 86400),
#'     units = "days"
#'   ),
#'   difftime(
#'     time1 = Sys.time(),
#'     time2 = Sys.time() + (4 * 86400),
#'     units = "days"
#'   ),
#'   difftime(
#'     time1 = Sys.time(),
#'     time2 = Sys.time() + (5 * 86400),
#'     units = "days"
#'   )
#' )
#' fct_vec <- factor(
#'   x = c("never", "rarely", "often", "always"),
#'   levels = c("never", "rarely", "often", "always"),
#'   ordered = TRUE
#' )
#'  # list
#' vct_list <- list(
#'   'log_vec' = log_vec,
#'   'int_vec' = int_vec,
#'   'dbl_vec' = dbl_vec,
#'   'chr_vec' = chr_vec,
#'
#'   'dat_vec' = dat_vec,
#'   'dtt_vec' = dtt_vec,
#'   'dft_vec' = dft_vec,
#'
#'   'fct_vec' = fct_vec
#' )
#' purrr::map(.x = vct_list, .f = vector_info)
vector_info <- function(x) {
  wut_mode <- mode(x)
  wut_class <- paste0(class(x), collapse = ", ")
  wut_typeof <- typeof(x)
  wut_attr <- attributes(x)
  if (is.null(wut_attr)) {
    wut_attr_vals <- "Atomic vector, no attributes"
    wut_attr_names <- "Atomic vector, no attributes names"
  } else if (length(wut_attr) == 1) {
    attr1 <- paste0(unlist(attributes(x)[1]), collapse = ", ")
    wut_attr_vals <- paste0("['", attr1, "']")
    wut_attr_names <-
      paste0("[", names(attributes(x)), "]", collapse = " & ")
  } else if (length(wut_attr) == 2) {
    attr1 <- paste0(unlist(attributes(x)[1]), collapse = ", ")
    attr2 <- paste0(unlist(attributes(x)[2]), collapse = ", ")
    wut_attr_vals <-
      paste0("['", attr1, "']", " & ", "['", attr2, "']")
    wut_attr_names <-
      paste0("[", names(attributes(x)), "]", collapse = " & ")
  }
  glue::glue(
    'vector mode(): {wut_mode}',
    '\n',
    'vector class(): {wut_class}',
    '\n',
    'vector typeof(): {wut_typeof}',
    '\n',
    'vector attributes() names: {wut_attr_names}',
    '\n',
    'vector attributes(): {wut_attr_vals}'
  )
}
