#'
#' server.R
#'
#' Server logic for GAMUT shiny app


library(shiny)

mydata <- mtcars


shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # generage boxplots of selected variable
        boxplot(mydata$mpg ~ mydata[, input$var],
                main = paste("Miles per Gallon by number of", input$var),
                ylab = "Miles Per Gallon",
                xlab = paste("Number of", input$var))


    })

    output$dataTable <- renderDataTable(

        # generate data table
        mtcars,
        options = list(
            pageLength = 10
        )

    )
})

