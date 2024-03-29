% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coleo_inject.R
\name{coleo_inject_mam_landmarks}
\alias{coleo_inject_mam_landmarks}
\title{Injection des repères d'une campagne mammifères dans la table
landmarks de coleo.}
\usage{
coleo_inject_mam_landmarks(df_id, schema = "public")
}
\arguments{
\item{df_id}{Un data.frame contenant une colonne campaign_id.}

\item{schema}{Schéma sur lequel faire la requête. Par défaut, le schéma
public est utilisé.}
}
\value{
Une data.frame avec une colonne landmark_X_id et une colonne pour
les landmark_X_error.
}
\description{
L'injection des repères pour les campagnes mammifères est différente
puiqu'il y a pour chaque observation un repère pour la caméra et un autre
pour le piège. Nous procédons donc à l'injection successif de tous les
repères.
}
\details{
Accepte un data.frame validé par \code{\link[rcoleo]{coleo_validate}} et
performe l'injection de la table landmarks.

La fonction est utilisée par \code{\link[rcoleo]{coleo_inject}}.
}
