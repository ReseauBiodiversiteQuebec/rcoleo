% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coleo_inject.R
\name{coleo_inject_table}
\alias{coleo_inject_table}
\title{Injection des données dans une table de Coleo.}
\usage{
coleo_inject_table(df_id, table, schema = "public")
}
\arguments{
\item{df_id}{Un data.frame validé par \code{\link[rcoleo]{coleo_validate}}
et contenant les id des lignes injectées dans la table campaigns.}

\item{table}{Une table de coleo où inecter les données.}

\item{schema}{Schéma sur lequel faire la requête.}
}
\value{
Le même data.frame, avec les id des lignes injectées dans la table
et une colonne pour les erreurs.
}
\description{
Accepte un data.frame validé par \code{\link[rcoleo]{coleo_validate}} et
performe l'injection dans la table de coleo spécifiée.
}
\details{
Cette fonction est appelée par \code{\link[rcoleo]{coleo_inject}} et fait
appel aux fonctions de préparation, d'exécution et de finalisation de
l'inejction : \code{\link[rcoleo]{coleo_injection_prep}},
\code{\link[rcoleo]{coleo_injection_execute}} et
\code{\link[rcoleo]{coleo_injection_final}}.
}
