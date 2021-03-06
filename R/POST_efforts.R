#' Publication d'un landmark dans l'API de coléo
#'
#' Cette fonction applique la méthode POST sur le point d'entrées `efforts` de l'API de Coleo
#'
#' @inheritParams post_cells
#' @export

post_efforts <- function(data_list, ...) {
  post_gen_list(data_list, "efforts", ...)
}
