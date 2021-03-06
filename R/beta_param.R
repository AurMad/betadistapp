#' @export
beta_param <- function(mu, stdev) {

    var <- stdev * stdev
    alpha <- ((1 - mu) / var - 1 / mu) * mu ^ 2
    beta <- alpha * (1 / mu - 1)

    return(params = list(alpha = alpha,
                         beta = beta))

  }

