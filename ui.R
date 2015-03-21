#'
#' ui.R
#'
#' User interface logic for GAMUT shiny app


library(shiny)

shinyUI(fluidPage(

    # Application title
    titlePanel("Motor Trends Car Road Tests"),


    # Sidebar with a slider input for number of bins
    sidebarLayout(
         sidebarPanel(
             # instructions
             p("This application displays a boxplot of the miles per gallon by number of cylinders or gears. "),

             # Choose a variable to display
             radioButtons("var",
                         label = "Choose a variable to display",
                         choices = c("cyl", "gear"),
                         selected = "cyl")
               ),

        # Show a plot of the generated distribution
        mainPanel(
            tabsetPanel(type = "tabs",
                        tabPanel("Plot", plotOutput("distPlot")),
                        tabPanel("Data", dataTableOutput("dataTable"))
                        #tabPanel("Help", includeMarkdown("include.md"))
            ),

            # Citation / data source
            h3("References"),
            tags$cite("  R Core Team (2014). R: A language and environment for statistical computing. R Foundation for
  Statistical Computing, Vienna, Austria. URL http://www.R-project.org/."),
            p(),
            tags$cite("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391–411.")
        )
    )
))



#
#         sidebarPanel(
#             selectInput("var",
#                         label = "Choose a variable to display",
#                         choices = c("cyl", "gear"),
#                         selected = "cyl")
#
#
