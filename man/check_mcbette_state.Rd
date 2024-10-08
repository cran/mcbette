% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_mcbette_state.R
\name{check_mcbette_state}
\alias{check_mcbette_state}
\title{Check if the \code{mcbette_state} is valid.}
\usage{
check_mcbette_state(mcbette_state)
}
\arguments{
\item{mcbette_state}{the \link{mcbette} state,
which is a \link{list} with the following elements:
\itemize{
  \item{
    beast2_installed
      \link{TRUE} if BEAST2 is installed,
      \link{FALSE} otherwise
  }
  \item{
     ns_installed
      \link{NA} if BEAST2 is not installed.
      \link{TRUE} if the BEAST2 NS package is installed
      \link{FALSE} if the BEAST2 NS package is not installed
  }
}}
}
\value{
Nothing. Will \link{stop} if the input is invalid.
}
\description{
Check if the \code{mcbette_state} is valid.
Will \link{stop} otherwise.
}
\author{
Richèl J.C. Bilderbeek
}
