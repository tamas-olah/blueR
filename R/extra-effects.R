#' Create a Boostrap 4 perspective effect
#'
#' Build an blue perspective effect
#'
#' @param ... Tag to be treated by the persp effect.
#' @param side Perspective side effect. "right" or "left".
#' 
#' @examples 
#' if (interactive()) {
#'  library(blueR)
#'  bluePersp(blueCard(), side = "right")
#' }
#' 
#' @note Disabled on small screens (not a bug)
#' 
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
bluePersp <- function(..., side) {
  htmltools::tags$div(class = paste0("transform-perspective-", side), ...)
}




#' Create a Boostrap 4 blur effect
#'
#' Build an blue blur effect
#'
#' @param ... Tag to be treated by the blur effect.
#' @param text Text that appears on hover.
#' @param text_color Text color. See \url{https://demos.creative-tim.com/blue-design-system/docs/foundation/colors.html}.
#' 
#' @examples 
#' if (interactive()) {
#'  library(blueR)
#'  blueBlur(
#'   blueImage(
#'    src = "inst/images/imac.svg",
#'    floating = TRUE
#'   )
#'  ) 
#' }
#' 
#' @author David Granjon, \email{dgranjon@@ymail.com}
#' 
#' @note Not compatible with blueDash
#'
#' @export
blueBlur <- function(..., text = NULL, text_color = NULL) {
  htmltools::tags$div(
    class = "blur--hover",
    htmltools::tags$div(
      class = "blur-item mt-5 on-screen",
      `data-toggle` = "on-screen",
      ...
    ),
    htmltools::tags$span(class = paste0("blur-hidden h2 text-", text_color), text)
  )
}



#' Create a Boostrap 4 cascade effect
#'
#' Build an blue cascade effect
#'
#' @param ... Slot for \link{blueCascadeItem}. Exactly 13 items.
#' 
#' @note You must pass cascade = TRUE to blueSection
#' 
#' @examples 
#' if (interactive()) {
#'  library(blueR)
#'  blueSection(
#'   size = "lg",
#'   status = "default",
#'   cascade = TRUE,
#'   
#'   blueH1(display = 3, "BlueR Cascade Effect") %>% 
#'     bluePadding(orientation = "l", value = 5) %>%
#'     bluePadding(orientation = "b", value = 5) %>%
#'     blueTextColor(color = "white"),
#'   
#'   blueCascade(
#'     blueCascadeItem(name = "diamond", src = "https://www.google.com"),
#'     blueCascadeItem(name = "album-2", size = "sm"),
#'     blueCascadeItem(name = "app", size = "sm"),
#'     blueCascadeItem(name = "atom", size = "sm"),
#'     blueCascadeItem(name = "bag-17", src = "https://www.google.com"),
#'     blueCascadeItem(name = "bell-55"),
#'     blueCascadeItem(name = "credit-card"),
#'     blueCascadeItem(name = "briefcase-24", size = "sm", "https://www.google.com"),
#'     blueCascadeItem(name = "building", size = "sm"),
#'     blueCascadeItem(name = "button-play", size = "sm"),
#'     blueCascadeItem(name = "calendar-grid-58"),
#'     blueCascadeItem(name = "camera-compact"),
#'     blueCascadeItem(name = "chart-bar-32")
#'   )
#'  )
#' }
#' 
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueCascade <- function(...) {
  
  htmltools::tags$div(
    class = "icons-container mt-5 on-screen",
    `data-toggle` = "on-screen",
    ...
  )
}



#' Create a Boostrap 4 cascade item
#'
#' Build an blue cascade item
#'
#' @param name Icon name.
#' @param size Icon size: NULL, "sm" or "lg".
#' @param src Optional external url, link, ...
#' 
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueCascadeItem <- function(name, size = NULL, src = NULL) {
  
  cascadeItemCl <- "icon"
  if (!is.null(size)) cascadeItemCl <- paste0(cascadeItemCl, " icon-", size)
  if (!is.null(name)) cascadeItemCl <- paste0(cascadeItemCl, " ni ni-", name)
  
  htmltools::a(
    href = src,
    target = "_blank",
    htmltools::tags$i(class = cascadeItemCl) 
  )
  
}