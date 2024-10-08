% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set_mcbette_state.R
\name{set_mcbette_state}
\alias{set_mcbette_state}
\title{Set the \link{mcbette} state.}
\usage{
set_mcbette_state(
  mcbette_state,
  beast2_folder = beastier::get_default_beast2_folder(),
  verbose = FALSE
)
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

\item{beast2_folder}{the folder where the BEAST2 is installed.
Note that this is not the folder where the BEAST2 executable is installed:
the BEAST2 executable is in a subfolder.
Use \link[beastier]{get_default_beast2_folder}
  to get the default BEAST2 folder.
Use \link[beastier]{get_default_beast2_bin_path}
  to get the full path to the default BEAST2 executable.
Use \link[beastier]{get_default_beast2_jar_path}
  to get the full path to the default BEAST2 jar file.}

\item{verbose}{if TRUE show debug output}
}
\value{
Nothing.
}
\description{
Set the \link{mcbette} state to having BEAST2 installed with
or without installing the BEAST2 NS package.
}
\note{
In newer versions of BEAST2, BEAST2 comes pre-installed with the
BEAST2 NS package. For such a version, one cannot install BEAST2
without NS. A warning will be issues if one intends to only install
BEAST2 (i.e. without the BEAST2 NS package) and gets the BEAST2
NS package installed as a side effect as well.

Also, installing or uninstalling a BEAST2 package from a BEAST2
installation will affect all installations.
}
\seealso{
\itemize{
  \item Use \link{get_mcbette_state} to
    get the current \link{mcbette} state
  \item Use \link{check_mcbette_state} to
    check the current \link{mcbette} state
}
}
