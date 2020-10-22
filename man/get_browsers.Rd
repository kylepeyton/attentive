\name{get_browsers}
\alias{get_browsers}
\title{
Parse a vector of User Agent strings to distinguish browsers from web applications.
}
\description{
Parse a vector of User Agent strings and return a binary vector identifying browsers (1 = browser, 0 = web application).
}
\usage{
get_browsers(ua_strings, verbose = FALSE)
}
\arguments{
  \item{ua_strings}{
A vector of User Agent strings. Note that missing values cannot be parsed and a vector with \code{NA} elements will generate an error.
}
  \item{verbose}{
If verbose = TRUE, returns a dataframe with detailed output. This information can be used for customized classification based on User Agent strings. Note that this is effectively a wrapper for \code{uaparserjs} (https://github.com/hrbrmstr/uaparserjs) and some columns in this dataframe may be missing as User Agent strings are difficult to parse consistently. \code{uaparserjs} relies on the list of User Agent strings in the YAML file available from \code{uap-core} (https://github.com/ua-parser/uap-core).
}
}
\value{
Binary vector the same length as \code{ua_strings} (default). If verbose = TRUE, a dataframe with nrows the same as vector length and 10 columns of detailed information parsed by \code{uaparserjs}.
}
\author{
Kyle Peyton <kyle.peyton@yale.edu>
}

\examples{
data(agents)

## Extract binary vector (1 = browser; 0 = web application)
browsers <- get_browsers(ua_strings = agents)

## proportion of "attentive" respondents (those not coming from web apps)
mean(browsers)
}
