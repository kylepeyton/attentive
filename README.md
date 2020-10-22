
<!-- README.md is generated from README.Rmd. Please edit that file -->

Implements simple procedure for identifying “attentive” survey
respondents based on their User Agent string.

To install the most recent development release, use the following code:

``` r
install.packages("devtools")
devtools::install_github("kylepeyton/attentive")
```

Here is the basic syntax for classifying respondents who come from
browsers as “attentive” and those coming from web applications as
“inattentive” using the `get_browsers()` function:

``` r
library(attentive)

## Example dataset of 1000 User Agent strings
data(agents)

## Extract binary vector (1 = browser; 0 = web application)
browsers <- get_browsers(ua_strings = agents)

## Proportion of "attentive" respondents based on this approach
mean(browsers)
#> [1] 0.564
```

You can also classify those coming from non-mobile devices
(e.g. tablets, desktops) as “attentive” and those coming from mobile
devices as “inattentive” with the `get_nonmobiles()` function.

``` r
## Extract binary vector (1 = non-mobile, 0 = mobile)
nonmobiles <- get_nonmobiles(ua_strings = agents)

## Proportion of "attentive" respondents based on this approach
mean(nonmobiles)
#> [1] 0.427
```
