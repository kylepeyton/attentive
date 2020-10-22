\name{agents}
\alias{agents}
\docType{data}
\title{
Example User Agent strings.
}
\description{
A vector of 1000 User Agent strings.
}
\usage{data("agents")}
\format{
  A character vector of length 1000. Each element is a User Agent string.
}
\examples{
data(agents)

## Extract binary vector (1 = browser; 0 = web application)
browsers <- get_browsers(ua_strings = agents)

## Extract detailed output as dataframe for customized classification.
browsers_verbose <- get_browsers(ua_strings = agents, verbose = TRUE)

## Extract binary vector (1 = non-mobile (e.g. tablet, pc); 0 = mobile)
nonmobiles <- get_nonmobiles(ua_strings = agents)
}
\keyword{datasets}
