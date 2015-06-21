library(shiny)

shinyUI(fluidPage(
    title = 'Download a PDF report',
    sidebarLayout(
        sidebarPanel(
            helpText(),
            selectInput('x', 'This app build a regression model of mpg against:',
                        choices = names(mtcars)[-1])
            #textInput("y","")
        ),
        mainPanel(
            plotOutput('regPlot'),
            h4("The slop is"),
            verbatimTextOutput("inputValue")
        )
    )
))





