#' Publication d'un site sur la base de données de Coléo
#'
#' Cette fonction applique la méthode POST sur le point d'entrées `observations` de l'API de Coleo
#'
#' @inheritParams post_cells
#' @export

post_observations <- function(data, ...) {

  responses <- list()
  endpoint <- rce$endpoints$observations

  for (i in 1:length(data)) {
    responses[[i]] <- post_gen(endpoint, data[[i]], ...)
  }

  return(responses)
}