#'
#' ui.R
#'
#' User interface logic for GAMUT shiny app


library(shiny)

shinyUI(fluidPage(

    # Application title
    titlePanel("GAMUT Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30),
            includeMarkdown("include.md")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            tabsetPanel(type = "tabs",
                        tabPanel("Plot", plotOutput("distPlot"))
                        #tabPanel("Help", includeMarkdown("include.md"))
            )
        )
    )
))
