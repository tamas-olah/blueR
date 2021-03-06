% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blueUser.R
\name{blueUser}
\alias{blueUser}
\title{Create a Boostrap 4 user image}
\usage{
blueUser(..., title = NULL, subtitle = NULL, src = NULL)
}
\arguments{
\item{...}{Any element such as \link{blueIcon}...}

\item{title}{User title.}

\item{subtitle}{User subtitle.}

\item{src}{User image url or path.}
}
\description{
Build an blue user image
}
\examples{
if (interactive()) {
 library(blueR)
 blueUser(
  title = "Ryan Tompson",
  subtitle = "Web Developer",
  src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/team-1-800x800.jpg"
 )
}


}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
