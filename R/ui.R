ui <- shiny::fluidPage(

    shiny::sidebarPanel(
        shiny::h2("Parameters"),
        shiny::h3(shiny::HTML("&alpha; and &beta; from curve")),
        shiny::sliderInput(
            inputId = "mu",
            label = "Mean",
            min = 0, max = 1,
            step = .01,
            value = .5
        ),
        shiny::sliderInput(
            inputId = "stdev",
            label = "Standard deviation",
            min = 0, max = .5,
            step = .001,
            value = .1
        ),
        shiny::h3(shiny::HTML("Curve from &alpha; and &beta;")),
        shiny::numericInput(
            inputId = "BetaDistAlpha",
            label = shiny::HTML("&alpha;"),
            value = 1,
            step = .1
        ),
        shiny::numericInput(
            inputId = "BetaDistBeta",
            label = shiny::HTML("&beta;"),
            value = 1,
            step = .1
        )
    ),
    shiny::mainPanel(
        shiny::plotOutput(
            outputId = "BetaDist"
        ),
        shiny::plotOutput(
            outputId = "BetaDist1"
        )
    ))
