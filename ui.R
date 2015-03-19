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
             # todo
             h2("todo"),
             pre("
- add axis labels, title, etc
- add instructions
- add citation/footnote
"),
             # instructions
             p("note"),

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
                        tabPanel("Summary", verbatimTextOutput("summary"))
                        #tabPanel("Help", includeMarkdown("include.md"))
            ),

            # Citation / data source
            p("Citation:")
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
