% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/POST_species.R
\name{post_species}
\alias{post_species}
\title{Publication d'une espèce sur la base de données de Coléo}
\usage{
post_species(data_list, ...)
}
\arguments{
\item{data_list}{une liste ou chacun des niveaux corresponds aux données attribuées au ednpoint.}

\item{...}{httr options; arguments de la fonction \code{httr::POST()}}
}
\description{
Cette fonction applique la méthode POST sur le point d'entrées \code{taxa} de l'API de Coleo
}
