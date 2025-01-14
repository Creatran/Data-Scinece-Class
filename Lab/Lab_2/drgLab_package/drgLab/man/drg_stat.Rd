% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/drg_stat.R
\name{drg_stat}
\alias{drg_stat}
\title{drg_stat}
\usage{
drg_stat(data, f)
}
\arguments{
\item{f}{}
}
\value{
numeric number
}
\description{
This function can calculates statistics over all of the FRG codes.
There are options in the function to calculate either the mean, median, or
standard deviation of the DRG codes.
}
\examples{
mean_drgcode <- drg_stat(drg, mean)
mean_drgcode <- drg_stat(drg, median)
mean_drgcode <- drg_stat(drg, sd)

}
