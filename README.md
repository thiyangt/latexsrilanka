
<!-- README.md is generated from README.Rmd. Please edit that file -->

The goal of latexsrilanka is to provide latex extraction dataset.

## Installation

You can install the development version of latexsrilanka from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("thiyangt/latexsrilanka")
```

## Usage

To load data

``` r
library(latexsrilanka)
data(srilankalatex)
head(srilankalatex)
#>   Year Month Zone RPC Estate Division    Latex Rainfall Tappable_trees
#> 1 2013   Jan  Wet  PW     HE       Ha 670.2903 22.14286          80499
#> 2 2013   Feb  Wet  PW     HE       Ha 513.4333 24.50000          80499
#> 3 2013   Mar  Wet  PW     HE       Ha 410.3226 58.00000          80499
#> 4 2013   Apr  Wet  PW     HE       Ha 350.5333 39.88235          80499
#> 5 2013   May  Wet  PW     HE       Ha 392.9091 51.95833          80499
#> 6 2013   Jun  Wet  PW     HE       Ha 461.0000 35.08333          80499
#>   Immature_trees Uprooted_trees Fertilizer_applied_trees
#> 1          28277              0                     6776
#> 2          28277              0                        0
#> 3          28277              0                        0
#> 4          28277              0                        0
#> 5          28277              0                        0
#> 6          28277              0                        0
#>   Stimulant_applied_trees Pests_and_diseases_infected_trees Labour_turnover
#> 1                       0                                 0             357
#> 2                       0                                 0             357
#> 3                       0                                 0             357
#> 4                       0                                 0             357
#> 5                       0                                 0             357
#> 6                       0                                 0             357
```
