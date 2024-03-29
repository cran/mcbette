% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_mcbette_state.R
\name{get_mcbette_state}
\alias{get_mcbette_state}
\title{Get the current state of \link{mcbette}}
\usage{
get_mcbette_state(beast2_folder = beastier::get_default_beast2_folder())
}
\arguments{
\item{beast2_folder}{the folder where the BEAST2 is installed.
Note that this is not the folder where the BEAST2 executable is installed:
the BEAST2 executable is in a subfolder.
Use \link[beastier]{get_default_beast2_folder}
  to get the default BEAST2 folder.
Use \link[beastier]{get_default_beast2_bin_path}
  to get the full path to the default BEAST2 executable.
Use \link[beastier]{get_default_beast2_jar_path}
  to get the full path to the default BEAST2 jar file.}
}
\value{
a \link{list} with the following elements:
\itemize{
  \item{
    beast2_installed
      \link{TRUE} if BEAST2 is installed,
      \link{FALSE} otherwise
  }
  \item{
     ns_installed
      \link{TRUE} if the BEAST2 NS package is installed
      \link{FALSE} if the BEAST2 or the BEAST2 NS package is not installed
  }
}
}
\description{
Get the current state of \link{mcbette}
}
\examples{
get_mcbette_state()

beastier::remove_beaustier_folders()
beastier::check_empty_beaustier_folders()
}
