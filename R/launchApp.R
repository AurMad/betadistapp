#' Shiny app for computing and evaluating the alpha and beta parameters of Beta distributions
#'
#' @export
shiny_beta <- function() {

  shiny::shinyApp(
    ui = ui,
    server = server
    )

  }
