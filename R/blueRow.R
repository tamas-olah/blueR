#' Create a Boostrap 4 row
#'
#' Build an blue row
#'
#' @param ... Any UI element.
#' @param center Whether to center row elements or not. FALSE by default.
#' 
#' @examples 
#' if (interactive()) {
#'  library(blueR)
#'  blueRow(
#'   blueColumn(
#'     width = 6,
#'     blueH1(
#'       display = 3, 
#'       "BlueR, HTML static template for R", 
#'       htmltools::span("completed with examples")
#'     ) %>% blueTextColor(color = "white"),
#'     blueLead(
#'       "Blue is a great free UI package based on Bootstrap 
#'               4 that includes the most important components and features"
#'     ) %>% blueTextColor(color = "white")
#'   ),
#'   blueColumn(
#'     width = 6,
#'     blueImage(
#'       src = "inst/images/imac.svg",
#'       floating = TRUE
#'     ) %>% bluePersp(side = "right")
#'     %>% blueBlur()
#'   )
#'  )
#' }
#' 
#' 
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueRow <- function(..., center = FALSE) {
  rowCl <- "row"
  if (center) rowCl <- paste0(rowCl, " align-items-center justify-content-center")
  
  htmltools::tags$div(class = rowCl, ..., htmltools::tags$br())
}