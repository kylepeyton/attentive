get_nonmobiles <- function(ua_strings) {
  if (any(is.na(ua_strings))) {
    stop("Missing values in input vector cannot be parsed.")
  }

  flag <-
    grepl(
      "up.browser|up.link|mmp|smartphone|midp|wap|phone|iemobile|mobile|oneplus",
      ua_strings,
      ignore.case = TRUE
    )
  return(1 - flag)

}
