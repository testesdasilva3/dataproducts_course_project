library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Normal random variables generation"),
    sidebarPanel(
        h3("This program simulate normal random variables and plot a histogram."),
        numericInput('n','Number of generated variables (from 10 to 1000)',10,min=10,max=1000,step=1),
        numericInput('mean','Mean of the random variables to be generated',0,min=-10,max=10,step=0.1),
        numericInput('sd','Standard deviation',0,min=-10,max=10,step=0.1)
    ),
    mainPanel(
        plotOutput('newHist')
    )
))