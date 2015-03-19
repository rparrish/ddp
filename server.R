#'
#' server.R
#'
#' Server logic for GAMUT shiny app


library(shiny)

mydata <- mtcars


shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # generage boxplots of selected variable
        boxplot(mydata$mpg ~ mydata[, input$var])


    })
})
