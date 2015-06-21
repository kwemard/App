shinyServer(function(input, output) {
    
    regFormula <- reactive({
        as.formula(paste('mpg ~', input$x))
    })
    
    output$regPlot <- renderPlot({
        par(mar = c(4, 4, .1, .1))
        plot(regFormula(), data = mtcars, pch = 18)
        abline(lm(regFormula(),data=mtcars),col=2)
    })
    output$inputValue= renderPrint({lm(regFormula(),data=mtcars)$coef[2] })
    
})

