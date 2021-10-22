# This examples show how to create a simple static html page using blueR
library(blueR)
library(htmltools)
library(magrittr)

tabText1 <- "Raw denim you probably haven't heard of them jean shorts Austin. 
            Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache 
cliche tempor, williamsburg carles vegan helvetica. Reprehenderit 
butcher retro keffiyeh dreamcatcher synth. Raw denim you probably 
haven't heard of them jean shorts Austin. Nesciunt tofu stumptown 
aliqua, retro synth master cleanse"

tabText2 <- "Cosby sweater eu banh mi, qui irure terry richardson ex squid. 
Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan 
american apparel, butcher voluptate nisi qui."

tabText3 <- "Raw denim you probably haven't heard of them jean shorts Austin. 
Nesciunt tofu stumptown aliqua, retro synth master cleanse. 
Mustache cliche tempor, williamsburg carles vegan helvetica. 
Reprehenderit butcher retro keffiyeh dreamcatcher synth"

example <- bluePage(
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
  footer = blueFooter(
    has_card = FALSE,
    #status = "info",
    #gradient = TRUE,
    blueContainer(
      size = "lg",
      blueRow(
        blueColumn(
          width = 6,
          blueIconWrapper(
            iconTag = blueIcon("atom"),
            size = "lg",
            status = "success",
            shadow = TRUE,
            hover_shadow = TRUE
          ),
          blueH1(
            display = 3,
            "Insert anything in the footer"
          ),
          blueLead(
            "The Arctic Ocean freezes every winter and much of 
            the sea-ice then thaws every summer, and that process 
            will continue whatever"
          )
        ),
        blueColumn(
          width = 6,
          blueCarousel(
            width = 12,
            id = "carousel2",
            blueCarouselItem(
              src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/img-1-1200x1000.jpg",
              active = TRUE
            ),
            blueCarouselItem(
              src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/img-2-1200x1000.jpg",
              active = FALSE
            )
          ) %>% bluePersp(side = "right")
        )
      )
    )
  ) %>% blueMargin(orientation = "t", value = 20),
  # main content
  blueSection(
    size = "lg",
    status = "default",
    gradient = TRUE,
    separator = TRUE,
    separator_color = "white",
    shape = TRUE,
    blueColumn(
      blueRow(
        blueColumn(
          width = 6,
          blueH1(
            display = 3, 
            "BlueR, HTML static template for R", 
            htmltools::span("completed with examples")
          ) %>% blueTextColor(color = "white"),
          blueLead(
            "Blue is a great free UI package based on Bootstrap 
            4 that includes the most important components and features"
          ) %>% blueTextColor(color = "white")
        ),
        blueColumn(
          width = 6,
          blueImage(
            src = "inst/images/imac.svg",
            floating = TRUE
          ) %>% bluePersp(side = "right")
          %>% blueBlur()
        )
      )
    ) %>% bluePadding(orientation = "x", value = 0)
  ),
  blueSection(
    size = "lg",
    status = NULL,
    gradient = FALSE,
    separator = FALSE,
    separator_color = NULL,
    shape = FALSE,
    blueRow(
      blueColumn(
        width = 4,
        blueCard(
          status = "primary",
          width = 12,
          title = "Card 1",
          hover_lift = TRUE,
          shadow = TRUE,
          icon = "check-bold",
          src = "#",
          "Blue is a great free UI package based on Bootstrap 4 
          that includes the most important components and features."
        ) %>% blueTooltip(position = "left", title = "I am a nice card")
      ),
      blueColumn(
        width = 4,
        blueCard(
          status = "success",
          width = 12,
          title = "Card 2",
          hover_lift = TRUE,
          shadow = TRUE,
          icon = "istanbul",
          src = "#",
          "Blue is a great free UI package based on Bootstrap 4 
          that includes the most important components and features"
        ) %>% blueTooltip(position = "top", title = "I am a nice card")
      ),
      blueColumn(
        width = 4,
        blueCard(
          status = "warning",
          width = 12,
          title = "Card 3",
          hover_lift = TRUE,
          shadow = TRUE,
          icon = "planet",
          src = "#",
          "Blue is a great free UI package based on Bootstrap 4 
          that includes the most important components and features"
        ) %>% blueTooltip(position = "bottom", title = "I am a nice card")
      )
    ),
    
    # badges
    blueH1(display = 3, "BlueR elements") %>% bluePadding(orientation = "t", value = 5),
    blueLead("Badges") %>% blueMuted(),
    blueRow(
      blueColumn(
        width = 3,
        blueBadge(
          text = "My badge",
          src = "https://www.google.com",
          pill = TRUE,
          status = "danger"
        )
      ),
      blueColumn(
        width = 3,
        blueBadge(
          text = "My badge",
          src = "https://www.google.com",
          pill = TRUE,
          status = "primary"
        )
      ),
      blueColumn(
        width = 3,
        blueBadge(
          text = "My badge",
          pill = TRUE,
          status = "warning"
        )
      ),
      blueColumn(
        width = 3,
        blueBadge(
          text = "My badge",
          src = "https://www.google.com",
          pill = FALSE,
          status = "success"
        )
      )
    ),
    
    # progress
    blueLead("Progress") %>% blueMuted(),
    blueRow(
      blueColumn(
        width = 4,
        blueProgress(value = 10, status = "danger", text = "Custom Text")
      ),
      blueColumn(
        width = 4,
        blueProgress(value = 40, status = "info", text = NULL)
      ),
      blueColumn(
        width = 4,
        blueProgress(value = 90, status = "warning", text = blueIcon("atom"))
      )
    ),
    
    # alerts
    blueLead("Alerts") %>% blueMuted(),
    blueRow(
      blueColumn(
        width = 4,
        blueAlert(
          icon = "basket",
          status = "danger",
          "This is an alert",
          closable = TRUE
        )
      ),
      blueColumn(
        width = 4,
        blueAlert(
          icon = "ui-02",
          status = "success",
          "This is an alert",
          closable = TRUE
        )
      ),
      blueColumn(
        width = 4,
        blueAlert(
          icon = "ui-03",
          status = "info",
          "This is an alert",
          closable = TRUE
        )
      )
    ),
    
    # tabs
    blueLead("Tabs") %>% blueMuted(),
    blueRow(
      blueTabSet(
        id = "tab-1",
        card_wrapper = TRUE,
        horizontal = TRUE,
        circle = FALSE,
        size = "sm",
        width = 6,
        iconList = list("cloud-upload-96", "bell-55", "calendar-grid-58"),
        blueTab(
          tabName = "Tab 1",
          active = FALSE,
          tabText1
        ),
        blueTab(
          tabName = "Tab 2",
          active = TRUE,
          tabText2
        ),
        blueTab(
          tabName = "Tab 3",
          active = FALSE,
          tabText3
        )
      ),
      blueTabSet(
        id = "tab-2",
        card_wrapper = TRUE,
        horizontal = FALSE,
        circle = TRUE,
        size = "sm",
        blueTab(
          tabName = "Tab 4",
          active = FALSE,
          tabText1
        ),
        blueTab(
          tabName = "Tab 5",
          active = TRUE,
          tabText2
        ),
        blueTab(
          tabName = "Tab 6",
          active = FALSE,
          tabText3
        )
      )
    )
  ) %>% blueMargin(orientation = "t", value = -200)
  %>% bluePadding(orientation = "t", value = 0),
  blueSection(
    size = "lg",
    status = "warning",
    gradient = TRUE,
    separator = TRUE,
    separator_color = "white",
    shape = FALSE,
    blueContainer(
      size = "lg",
      blueRow(
        blueColumn(
          width = 6,
          blueH1(
            display = 3, 
            "Load modals", 
            htmltools::span("by clicking on buttons")
          ) %>% blueTextColor(color = "white"),
          blueButton(
            name = "Click me!",
            status = "danger",
            icon = "atom",
            size = "lg",
            toggle_modal = TRUE,
            modal_id = "modal1"
          )
        ),
        blueColumn(
          width = 6,
          blueModal(
            id = "modal1",
            title = "This is a modal",
            status = "danger",
            gradient = TRUE,
            "YOU SHOULD READ THIS!",
            br(),
            "A small river named Duden flows by their place and supplies it with the necessary regelialia."
          ),
          blueImage(
            floating = TRUE,
            src = "https://demos.creative-tim.com/blue-design-system/assets/img/ill/ill-2.svg",
            hover_lift = TRUE
          ) %>% blueTooltip(position = "right", title = "I am a nice floating image") 
          %>% blueBlur(text = "Hi There!", text_color = "white")
        )
      ) %>% bluePadding(orientation = "y", value = 5),
      bluePagination(
        size = "lg",
        align = "center",
        bluePaginationItem(
          name = 1,
          src = "test.html"
        ),
        bluePaginationItem(
          name = 2,
          src = "https://www.google.com"
        )
      )
    )
  ),
  blueSection(
    size = "lg",
    status = "white",
    blueRow(
      blueIconWrapper(
        iconTag = blueIcon("atom"),
        size = "lg",
        status = "danger",
        shadow = TRUE,
        hover_shadow = TRUE
      ),
      blueH1(display = 3, "BlueR social") %>% bluePadding(orientation = "l", value = 5)
    ),
    blueRow(
      blueColumn(
        width = 3,
        blueUser(
          title = "Ryan Tompson",
          subtitle = "Web Developer",
          src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/team-1-800x800.jpg"
        ) %>% blueBlur(text = "Ryan Tompson", text_color = "default")
      ),
      blueColumn(
        width = 3,
        blueUser(
          title = "Romina Hadid",
          subtitle = "Marketing Strategist",
          src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/team-2-800x800.jpg"
        ) %>% blueBlur(text = "Romina Hadid", text_color = "default")
      ),
      blueColumn(
        width = 3,
        blueUser(
          title = "Alexander Smith",
          subtitle = "UI/UX Designer",
          src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/team-3-800x800.jpg"
        ) %>% blueBlur(text = "Alexander Smith", text_color = "default")
      ),
      blueColumn(
        width = 3,
        blueUser(
          title = "John Doe",
          subtitle = "Founder and CEO",
          src = "https://demos.creative-tim.com/blue-design-system/assets/img/theme/team-4-800x800.jpg"
        ) %>% blueBlur(text = "John Doe", text_color = "default")
      )
    )
    # br(), br(),
    # blueContainer(
    #   blueProfile(
    #     title = "John",
    #     subtitle = "Japan, Kagoshima",
    #     src = "https://image.flaticon.com/icons/svg/1006/1006540.svg",
    #     url = "https://www.google.com",
    #     url_1 = "https://www.google.com",
    #     url_2 = "https://www.google.com",
    #     stats = blueProfileStats(
    #       blueProfileStat(
    #         value = 22,
    #         description = "Friends"
    #       ),
    #       blueProfileStat(
    #         value = 10,
    #         description = "Photos"
    #       ),
    #       blueProfileStat(
    #         value = 89,
    #         description = "Comments"
    #       )
    #     ),
    #     "An artist of considerable range, Ryan — 
    #     the name taken by Melbourne-raised, 
    #     Brooklyn-based Nick Murphy — writes, 
    #     performs and records all of his own music, 
    #     giving it a warm, intimate feel with a solid 
    #     groove structure. An artist of considerable 
    #     range."
    #   )
    # )
  ),
  blueSection(
    size = "lg",
    status = "default",
    cascade = TRUE,
    
    blueH1(display = 3, "BlueR Cascade Effect") %>% 
      bluePadding(orientation = "l", value = 5) %>%
      bluePadding(orientation = "b", value = 5) %>%
      blueTextColor(color = "white"),
    
    blueCascade(
      blueCascadeItem(name = "diamond", src = "https://www.google.com"),
      blueCascadeItem(name = "album-2", size = "sm"),
      blueCascadeItem(name = "app", size = "sm"),
      blueCascadeItem(name = "atom", size = "sm"),
      blueCascadeItem(name = "bag-17", src = "https://www.google.com"),
      blueCascadeItem(name = "bell-55"),
      blueCascadeItem(name = "credit-card"),
      blueCascadeItem(name = "briefcase-24", size = "sm", "https://www.google.com"),
      blueCascadeItem(name = "building", size = "sm"),
      blueCascadeItem(name = "button-play", size = "sm"),
      blueCascadeItem(name = "calendar-grid-58"),
      blueCascadeItem(name = "camera-compact"),
      blueCascadeItem(name = "chart-bar-32")
    )
  )
)


bluePageTemplate(filename = "example", path = "/Users/macdavidgranjon/Desktop/blueTest", example)