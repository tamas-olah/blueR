#' Create a Boostrap 4 blue footer
#'
#' Build an blue footer
#'
#' @param ... Footer content.
#' @param has_card Enable card rendering in the footer. FALSE by default.
#' @param status  Footer status color. See \url{https://demos.creative-tim.com/blue-design-system/docs/foundation/colors.html}.
#' @param gradient Whether to apply a gradient. FALSE by default.
#'
#' @examples
#' if(interactive()){
#'  library(blueR)
#'  blueFooter(
#'   has_card = FALSE,
#'   blueContainer(
#'     size = "lg",
#'     blueRow(
#'       blueColumn(
#'         width = 6,
#'         blueIconWrapper(
#'           iconTag = blueIcon("atom"),
#'           size = "lg",
#'           status = "success",
#'           shadow = TRUE,
#'           hover_shadow = TRUE
#'         ),
#'         blueH1(
#'           display = 3,
#'           "Insert anything in the footer"
#'         ),
#'         blueLead(
#'           "The Arctic Ocean freezes every winter and much of 
#'           the sea-ice then thaws every summer, and that process 
#'           will continue whatever"
#'         )
#'         ),
#'       blueColumn(
#'         width = 6,
#'         blueCarousel(
#'           width = 12,
#'           id = "carousel2",
#'           blueCarouselItem(
#'             src = "http://www.72pxdesigns.com/wp-content/uploads/2017/06/preview-814162.png",
#'             active = TRUE
#'           ),
#'           blueCarouselItem(
#'             src = "http://www.72pxdesigns.com/wp-content/uploads/2017/06/preview-814162.png",
#'             active = FALSE
#'           )
#'         )
#'       )
#'     )
#'    )
#'  )
#' }
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueFooter <- function(..., has_card = FALSE, status = NULL, gradient = FALSE) {
  
  footerCl <- "footer"
  if (!is.null(status)) {
    if (gradient) {
      footerCl <- paste0(footerCl, " bg-gradient-", status)
    } else {
      footerCl <- paste0(footerCl, " bg-", status)
    }
  }
  if (has_card) footerCl <- paste0(footerCl, " has-cards")
  
  htmltools::tags$footer(class = footerCl, ...)
  
}