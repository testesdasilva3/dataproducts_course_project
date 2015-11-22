library(shiny)

shinyServer(
    function(input,output){
        output$newHist <- renderPlot({
            hist(rnorm(input$n,mean = input$mean,sd = input$sd),xlab='simulated normal random variables', col='lightblue',main='Histogram of the simulated normal variables')
        })
    }
)