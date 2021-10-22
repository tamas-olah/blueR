#' Create a Boostrap 4 blue navbar
#'
#' Build an blue navbar
#'
#' @param ... Slot for \link{blueNavMenu}.
#' @param href Link to another HTML page.
#' @param src Brand image path or url. 
#' @param src_collapsed Brand image path or url on small devices. Background is white.
#' @param id Navbar toggle unique id.
#' @param headroom Whether to apply headroom.js effect to the header. TRUE by default.
#'
#' @examples
#' if(interactive()){
#'  library(blueR)
#'  blueNavbar(
#'   id = "main-navbar",
#'   src = "https://demos.creative-tim.com/blue-design-system/assets/img/brand/white.png",
#'   # left menu
#'   blueNavMenu(
#'     blueDropdown(
#'       name = "Components",
#'       size = "lg",
#'       blueDropdownItem(
#'         name = "Getting Started",
#'         description = "BlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBla",
#'         src = "test.html",
#'         icon = "spaceship",
#'         status = "primary"
#'       ),
#'       blueDropdownItem(
#'         name = "Foundation",
#'         description = "BlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBla",
#'         src = "",
#'         icon = "palette",
#'         status = "warning"
#'       ),
#'       blueDropdownItem(
#'         name = "Components",
#'         description = "BlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBla",
#'         src = "",
#'         icon = "ui-04",
#'         status = "success"
#'       )
#'     )
#'   ),
#'   # right menu
#'   blueNavMenu(
#'     side = "right",
#'     blueNavItem(
#'       name = "facebook",
#'       src = "https://www.facebook.com",
#'       icon = "facebook-square",
#'       tooltip = "Like us on Facebook"
#'     ),
#'     blueNavItem(
#'       name = "instagram",
#'       src = "https://www.instagram.com",
#'       icon = "instagram",
#'       tooltip = "Follow us on Instagram"
#'     ),
#'     blueNavItem(
#'       name = "twitter",
#'       src = "https://www.twitter.com",
#'       icon = "twitter-square",
#'       tooltip = "Follow us on Twitter"
#'     ),
#'     blueNavItem(
#'       name = "github",
#'       src = "https://www.github.com",
#'       icon = "github",
#'       tooltip = "Star us on Github"
#'     )
#'   )
#'  )
#' }
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueNavbar <- function(..., href = "#", src = NULL, src_collapsed = NULL, id,
                        headroom = TRUE) {
  
  # brand
  navBrand <- htmltools::tags$a(
    class = "navbar-brand mr-lg-5",
    href = href,
    htmltools::tags$img(src = src)
  )
  
  # toggler
  navbarToggler <- htmltools::tags$button(
    class = "navbar-toggler collapsed",
    type = "button",
    `data-toggle` = "collapse",
    `data-target` = paste0("#", id),
    `aria-controls` = id,
    `aria-expanded` = "false",
    `aria-label` = "Toggle navigation",
    htmltools::tags$span(class = "navbar-toggler-icon")
  )
  
  # collapse wrapper
  navbarCollapse <- htmltools::tags$div(
    class = "navbar-collapse collapse",
    id = id,
    style = NA,
    htmltools::tags$div(
      class = "navbar-collapse-header",
      htmltools::tags$div( 
        class = "row",
        htmltools::tags$div(
          class = "col-6 collapse-brand",
          htmltools::tags$a(href = href, htmltools::tags$img(src = src_collapsed))
        ),
        htmltools::tags$div( 
          class = "col-6 collapse-close",
          htmltools::tags$button(
            type = "button", 
            class = "navbar-toggler", 
            `data-toggle` = "collapse", 
            `data-target` = paste0("#", id), 
            `aria-controls` = id, 
            `aria-expanded` = "false", 
            `aria-label` = "Toggle navigation",
            htmltools::tags$span(),
            htmltools::tags$span()
          )
        )
      )
    ),
    ...
  )
  
  # wrapper
  htmltools::tags$nav(
    class = paste0(
      "navbar navbar-main navbar-expand-lg navbar-transparent navbar-light",
      if (headroom) " headroom headroom--not-bottom headroom--pinned headroom--top"
    ),
    id = "navbar-main",
    htmltools::tags$div(
      class = "container",
      navBrand,
      navbarToggler,
      navbarCollapse
    )
  )
}




#' Create a Boostrap 4 blue navbar menu
#'
#' Build an blue navbar menu
#'
#' @param ... Slot for \link{blueNavItem} and \link{blueDropdown}.
#' @param side Nav menu side. "left by default" but can also be "right".
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueNavMenu <- function(..., side = "left") {
  
  navMenuCl <- if (side == "left") {
    "navbar-nav navbar-nav-hover align-items-lg-center"
  } else if (side == "right") {
    "navbar-nav align-items-lg-center ml-lg-auto"
  }
  
  htmltools::tags$ul(class = navMenuCl, ...)
}



#' Create a Boostrap 4 blue navbar item
#'
#' Build an blue navbar item
#'
#' @param name Item name.
#' @param src HTML target page.
#' @param icon Item icon of any. Expect \link{blueIcon} or \link[shiny]{icon}.
#' @param tooltip Text to display when the item is hovered.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueNavItem <- function(name = NULL, src = NULL, icon = NULL, tooltip = NULL) {
  htmltools::tags$li(
    class = "nav-item",
    htmltools::tags$a(
      class = "nav-link nav-link-icon", 
      href = src,
      #target = "_blank",
      `data-toggle` = "tooltip",
      title = "",
      `data-original-title` = tooltip,
      icon,
      htmltools::tags$span(class = "nav-link-inner--text d-lg-none", name)
    )
  )
}


#' Create a Boostrap 4 blue dropdown menu
#'
#' Build an blue dropdown menu
#'
#' @param ... Slot for \link{blueDropdownItem}.
#' @param name Dropdown menu name.
#' @param size Dropdown size: NULL or "xl".
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueDropdown <- function(..., name, size = NULL) {
  
  dropdownCl <- "dropdown-menu"
  if (!is.null(size)) dropdownCl <- paste0(dropdownCl, " dropdown-menu-", size)
  
  htmltools::tags$li(
    class = "nav-item dropdown",
    # button
    htmltools::tags$a(
      href = "#",
      class = "nav-link",
      `data-toggle` = "dropdown",
      role = "button",
      htmltools::tags$i(class="ni ni-ui-04 d-lg-none"),
      htmltools::tags$span(class="nav-link-inner--text", name)
    ),
    # inner menu
    htmltools::tags$div(
      class = dropdownCl,
      htmltools::tags$div(class = "dropdown-menu-inner", ...)
    )
  )
}



#' Create a Boostrap 4 blue dropdown item
#'
#' Build an blue dropdown item
#' 
#' @param name Item name.
#' @param description Item description if any.
#' @param src HTML target page.
#' @param icon Item icon of any. Expect \link{blueIcon} or \link[shiny]{icon}.
#' @param status Icon and name color status. See \url{https://demos.creative-tim.com/blue-design-system/docs/foundation/colors.html}.
#' 
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
blueDropdownItem <- function(name = NULL, description = NULL, src = NULL, 
                              icon = NULL, status = NULL) {
  htmltools::tags$a(
    class = "media d-flex align-items-center",
    href = src,
    # icon if any
    if (!is.null(icon)) {
      blueIconWrapper(
        iconTag = icon,
        gradient_color = status,
        circle = TRUE,
        size = NULL,
        status = status,
        shadow = FALSE, 
        hover_shadow = FALSE
      )
    },
    htmltools::tags$div(
      class = "media-body ml-3",
      htmltools::tags$h6(class = paste0("heading text-", status, " mb-md-1"), name),
      htmltools::tags$p(class = "description d-none d-md-inline-block mb-0", description)
    )
  )
}