get_browsers <- function(ua_strings, verbose = FALSE) {
  if (any(is.na(ua_strings))) {
    stop("Missing values in input vector cannot be parsed.")
  }

  ## Parse ua strings
  ua_df <- uaparserjs::ua_parse(user_agents = ua_strings)

  if (verbose == FALSE) {
    ## Flag web applications, return binary vector identifying browsers
    flag <-
      pmax(
        grepl(
          pattern = "webview",
          ua_df$ua.family,
          ignore.case = TRUE
        ),
        grepl(pattern = "instagram|fb", ua_strings, ignore.case = TRUE),
        grepl(pattern = "playstation|xbox|nintendo", ua_strings,
              ignore.case = TRUE)
      )
    return(1 - flag)
  }
  ## Return detailed output as data.frame if desired.
  else {
    return(ua_df)
  }

}
