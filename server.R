#'
#' server.R
#'
#' Server logic for GAMUT shiny app


library(shiny)

mydata <- readRDS("data/GAMUT.rds")


shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        x    <- mydata$den
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white')

    })
})
