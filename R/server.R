server <- function(input, output){

    alpha <- reactive(beta_param(input$mu, input$stdev)$alpha)
    beta <- reactive(beta_param(input$mu, input$stdev)$beta)

    output$BetaDist <- renderPlot({

        if(!is.nan(dbeta(.5, alpha(), beta()))){

            curve(dbeta(x, alpha(), beta()),
                  ylab = "Density",
                  xlab = "Probability",
                  main = paste(
                      "a = ",
                      round(alpha(), 2),
                      " ; b = ",
                      round(beta(), 2)
                  ))

        } else {

            points(0, 0, pch = "x", col = "red")
        }

    })

    output$BetaDist1 <- renderPlot({

        curve(dbeta(x, input$BetaDistAlpha, input$BetaDistBeta),
              xlab = "Probability",
              ylab = "Density")

    })

}
