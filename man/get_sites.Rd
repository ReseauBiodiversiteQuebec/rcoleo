% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GET_sites.R
\name{get_sites}
\alias{get_sites}
\title{Obtenir les informations sur les sites depuis l'API de coleo}
\usage{
get_sites(site_code = NULL, ...)
}
\arguments{
\item{site_code}{\code{character} vecteur contenant les identifiants uniques que l'on désire obtenir. Si site_code n'est pas spécifié, la fonction retournera l'ensemble des entrées présentes dans la table cells.}

\item{...}{httr options; arguments de la fonction \code{httr::GET()}}
}
\value{
Retourne une objet de type \code{list} contenant les réponses de l'API. Chaque niveau de la liste correspond à une page. Pour chacun des appels sur l'API (page), la classe retourné est \code{getSuccess} ou \code{getError}. Une réponse de classe \code{getSuccess} est une liste à deux niveaux composé du contenu (\code{body}), et la réponse \link[httr:response]{httr::response}. Une réponse de classe \code{getError} dispose de la même structure mais ne contiendra pas de body, seulement la réponse de l'API.
}
\description{
Obtenir les informations sur les sites depuis l'API de coleo
}
\examples{
\dontrun{
get_sites(site_code=c('135_104_H01'))
head(get_sites())
}
}
