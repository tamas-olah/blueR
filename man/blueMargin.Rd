% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/typography.R
\name{blueMargin}
\alias{blueMargin}
\title{Change tag margins}
\usage{
blueMargin(tag, orientation, value)
}
\arguments{
\item{tag}{Tag to be treated.}

\item{orientation}{Margin side. See \url{https://getbootstrap.com/docs/4.1/utilities/spacing/}.}

\item{value}{Margin value, negative or positive. See \url{https://getbootstrap.com/docs/4.1/utilities/spacing/}.}
}
\description{
Change tag margins
}
\examples{
if (interactive()) {
 library(blueR)
 blueMargin(tag = h1("test"), orientation = "t", value = -1)
 blueMargin(tag = h1("test"), orientation = "x", value = 7)
}

}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
