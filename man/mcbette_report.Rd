% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mcbette_report.R
\name{mcbette_report}
\alias{mcbette_report}
\title{Create a \link{mcbette} report,
to be used when reporting bugs}
\usage{
mcbette_report(beast2_folder = beastier::get_default_beast2_folder())
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
nothing. It is intended that the output (not
the return value) is copy-pasted from screen.
}
\description{
Create a \link{mcbette} report,
to be used when reporting bugs
}
\examples{
if(beautier::is_on_ci()) {
  mcbette_report()
}
}
\author{
Richèl J.C. Bilderbeek
}
