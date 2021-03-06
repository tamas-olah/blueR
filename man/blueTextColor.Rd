% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/typography.R
\name{blueTextColor}
\alias{blueTextColor}
\title{Add a custom color to a text}
\usage{
blueTextColor(tag, color)
}
\arguments{
\item{tag}{Any tag containing text.}

\item{color}{Text color. See \url{https://demos.creative-tim.com/blue-design-system/docs/foundation/colors.html}.}
}
\description{
A custom color fo your text
}
\examples{
if (interactive()) {
 library(blueR)
 library(htmltools)
 blueTextColor(
  tag = h1("test"),
  color = "success"
 )
}


}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
