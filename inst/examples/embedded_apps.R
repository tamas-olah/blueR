library(blueR)
library(htmltools)
library(magrittr)
app_test <- bluePage(
  title = "BlueR Static Template",
  author =  "Divad Nojnarg",
  description = "HTML Static Template",
  navbar = blueNavbar(
    id = "main-navbar",
    src = "https://demos.creative-tim.com/blue-design-system/assets/img/brand/white.png",
    # left menu
    blueNavMenu(
      blueDropdown(
        name = "Components",
        size = "lg",
        blueDropdownItem(
          name = "Getting Started",
          description = "BlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBla",
          src = "test.html",
          icon = "spaceship",
          status = "primary"
        ),
        blueDropdownItem(
          name = "Foundation",
          description = "BlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBla",
          src = "",
          icon = "palette",
          status = "warning"
        ),
        blueDropdownItem(
          name = "Components",
          description = "BlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBlaBla",
          src = "",
          icon = "ui-04",
          status = "success"
        )
      )
    ),
    # right menu
    blueNavMenu(
      side = "right",
      blueNavItem(
        name = "facebook",
        src = "https://www.facebook.com",
        icon = "facebook-square",
        tooltip = "Like us on Facebook"
      ),
      blueNavItem(
        name = "instagram",
        src = "https://www.instagram.com",
        icon = "instagram",
        tooltip = "Follow us on Instagram"
      ),
      blueNavItem(
        name = "twitter",
        src = "https://www.twitter.com",
        icon = "twitter-square",
        tooltip = "Follow us on Twitter"
      ),
      blueNavItem(
        name = "github",
        src = "https://www.github.com",
        icon = "github",
        tooltip = "Star us on Github"
      )
    )
  ),
  footer = blueFooter() %>% blueMargin(orientation = "t", value = 20),
  # main content
  blueSection(
    size = "lg",
    status = "default",
    gradient = TRUE,
    separator = TRUE,
    separator_color = "white",
    shape = TRUE,
    blueColumn(
      width = 12,
      blueCarousel(
        width = 12,
        floating = TRUE, 
        hover_lift = FALSE,
        id = "carousel2",
        blueCarouselItem(
          src = "http://130.60.24.205/dreamRs_ratp/",
          active = TRUE,
          mode = "iframe"
        ),
        blueCarouselItem(
          src = "http://130.60.24.205/Lorenz_parameters/",
          active = FALSE,
          mode = "iframe"
        ),
        blueCarouselItem(
          src = "http://130.60.24.205/blueDash/",
          active = FALSE,
          mode = "iframe"
        )
      ) %>% bluePersp(side = "right")
    )
  ) %>% blueMargin(orientation = "y", value = 300)
)

bluePageTemplate(filename = "app_test", path = "/Users/macdavidgranjon/Desktop/", app_test)