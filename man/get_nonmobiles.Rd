\name{get_nonmobiles}
\alias{get_nonmobiles}
\title{
Parse a vector of User Agent strings to distinguish mobiles from non-mobiles.
}
\description{
Parse a vector of User Agent strings and return a binary vector identifying mobiles (1 = non-mobile, 0 = mobile).
}
\usage{
get_nonmobiles(ua_strings)
}
\arguments{
  \item{ua_strings}{
A vector of User Agent strings. Note that missing values cannot be parsed and a vector with \code{NA} elements will generate an error.
}
}
\value{
Binary vector the same length as \code{ua_strings} (default).
}
\author{
Kyle Peyton <kyle.peyton@yale.edu>
}

\examples{
data(agents)

## Extract binary vector (1 = non-mobile, 0 = mobile)
nonmobiles <- get_nonmobiles(ua_strings = agents)

## proportion of "attentive" respondents (those not coming from mobile phones)
mean(nonmobiles)
}

