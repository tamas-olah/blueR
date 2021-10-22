#' Create a Boostrap 4 blue page
#'
#' Build an blue page
#'
#' @param ... Body content
#' @param navbar Navbar.
#' @param footer Footer.
#' @param title App title.
#' @param author Author.
#' @param description Purpose.
#' @param favicon Website favicon. The png must be located in inst/images.
#' @param analytics Website analytics such as Hotjar or google analytics. 
#' Must be wrapped in tagList or list. Moreover the script must be contained
#' in a <script></script> tag: if it is not already the case, use tags$script.
#'
#' @examples
#' if(interactive()){
#'  library(blueR)
#'  bluePage(
#'   title = "BlueR Static Template",
#'   author =  "Somebody",
#'   description = "HTML Static Template",
#'   navbar = blueNavbar(id = "navbar"),
#'   footer = blueFooter(),
#'   # main content
#'   blueSection(),
#'   blueSection(),
#'   blueSection(),
#'   blueSection(),
#'   blueSection()
#'  )
#' }
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
bluePage <- function(..., title = NULL, description = NULL, author = NULL, 
                      navbar = NULL, footer = NULL, favicon = NULL,
                      analytics = NULL){
  
  htmltools::tags$html(
    # head: need to use takeHeads from htmltools to extract all head elements
    takeHeads(
      htmltools::tags$head(
        htmltools::tags$meta(charset = "utf-8"),
        htmltools::tags$meta(
          name = "viewport",
          content = "width=device-width, initial-scale=1, shrink-to-fit=no"
        ),
        htmltools::tags$meta(name = "description", content = description),
        htmltools::tags$meta(name = "author", content = author),
        htmltools::tags$title(title),
        
        # web dependencies CSS
        if (!is.null(favicon)) {
          htmltools::tags$link(href = paste0("inst/images/", favicon), rel = "icon", type = "image/png")
        },
        htmltools::tags$link(href = "https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700", rel = "stylesheet"),
        htmltools::tags$link(href = "inst/assets/vendor/nucleo/css/nucleo.css", rel = "stylesheet"),
        htmltools::tags$link(href = "inst/assets/vendor/font-awesome/css/font-awesome.min.css", rel = "stylesheet"),
        htmltools::tags$link(type = "text/css", href = "inst/assets/css/blue.min.css", rel = "stylesheet"),
        
        # add analytic scripts if any
        if (!is.null(analytics)) analytics
        
      )
    ),
    # Body
    htmltools::tags$body(
      htmltools::tags$header(class = "header-global", navbar),
      tags$main(...),
      footer,
      
      # Core -->
      htmltools::tags$script(src = "inst/assets/vendor/jquery/jquery.min.js"),
      htmltools::tags$script(src = "inst/assets/vendor/popper/popper.min.js"),
      htmltools::tags$script(src = "inst/assets/vendor/bootstrap/bootstrap.min.js"),
      htmltools::tags$script(src = "inst/assets/vendor/headroom/headroom.min.js"),
      # Optional JS -->
      htmltools::tags$script(src = "inst/assets/vendor/onscreen/onscreen.min.js"),
      #htmltools::includeScript(path = "./assets/vendor/nouislider/js/nouislider.min.js"),
      #htmltools::includeScript(path = "./assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"),
      
      # Blue JS -->
      htmltools::tags$script(src = "inst/assets/js/blue.min.js")
    )
  )
}




#' Create an HTML version of the bluePage
#'
#' @param filename HTML filename for instance, index.html.
#' @param path Where to store the saved file. By default, getwd().
#' @param bluePage Slot for \link{bluePage}.
#' @param view Whether to preview the page in a web browser. TRUE by default.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#' 
#' @note Do not forget to copy the inst folder of the package to the 
#' root of your website folder.
#' 
#' @examples
#' if(interactive()){
#'  library(blueR)
#'  
#'  # generate the page
#'  example <- bluePage(
#'   title = "BlueR Static Template",
#'   author =  "Somebody",
#'   description = "HTML Static Template",
#'   navbar = blueNavbar(id = "navbar"),
#'   footer = blueFooter(),
#'   # main content
#'   blueSection(),
#'   blueSection(),
#'   blueSection(),
#'   blueSection(),
#'   blueSection()
#'  )
#'  
#'  # create the path
#'  path <- getwd()
#'  
#'  # generate the static page
#'  bluePageTemplate(filename = "example", path = path, bluePage = example)
#'  
#' }
#'
#' @export
bluePageTemplate <- function(filename = "index", path = getwd(), bluePage, view = TRUE) {
  # add DOCTYPE html before the page
  bluePage <- paste0("<!DOCTYPE html>", as.character(bluePage), collapse = "\n")
  
  file_path <- paste0(path, "/", filename, ".html")
  
  # html page
  file.create(file_path)
  utils::write.table(
    bluePage,
    file = file_path,
    quote = FALSE,
    col.names = FALSE,
    row.names = FALSE
  )
  
  if (view) {
    rstudioapi::viewer(url = file_path)
  }
}


#' Install blue assets
#'
#' @param path Where to store assets. By default, getwd().
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#' 
#' @note blue assets are stored in the inst folder similarly as the package folder.
#' 
#' @examples
#' if(interactive()){
#'  library(blueR)
#'  blueInstall()
#' }
#'
#' @export
blueInstall <- function(path = getwd()) {
  
  dir.create(paste0(path, "/inst"))
  
  assets_path <- system.file("assets", package = "blueR")
  images_path <- system.file("images", package = "blueR")
  
  # copy assets files to the website path
  system(paste0("scp -r ", assets_path, " ", path, "/inst"))
  system(paste0("scp -r ", images_path, " ", path, "/inst"))
  
}