# convenience function to check the user selection of a campaign type

#' Validate user input of campaign type
#'
#' Matches input against the valid campaign types. These are stored in an
#' internal list at `zzz.R`. If a new campaign type is added, this
#' will have to change.
#'
#' @param campaign_input Must be one of "végétation", "papilionidés",
#'   "acoustique", "insectes_sol", "mammifères", "odonates" or "zooplancton".
#'   NOTE that partial matching is enabled: you can input "v" and get
#'   "végétation" or "pap" and get "papilionidés"
#'
#'
#' @return the full name of the campaign type, suitable for making another api
#'   request.
#' @export
validate_campaign_type <- function(campaign_input) {

  vec_camps <- campaign_types()

  ind <- pmatch(campaign_input, vec_camps)

  if (is.na(ind)) stop("This does not match any input. Verify spelling, including accents. Verify that rcoleo::campaign_types() is up to date.")

  return(vec_camps[ind])

}


# convenience function to check the user selection of a site type

#' Validate user input of site type
#'
#' Matches input against the valid site types. These are stored in an
#' internal list at `zzz.R`. If a new site type is added, this
#' will have to change.
#'
#' @param site_input Must be one of "végétation", "papilionidés",
#'   "acoustique", "insectes_sol", "mammifères", "odonates" or "zooplancton".
#'   NOTE that partial matching is enabled: you can input "v" and get
#'   "végétation" or "pap" and get "papilionidés"
#'
#'
#' @return the full name of the site type, suitable for making another api
#'   request.
#' @export
validate_site_type <- function(site_input) {

  vec_sites <- site_types()

  ind <- pmatch(site_input, vec_sites)

  if (is.na(ind)) stop("This does not match any input. Verify spelling, including accents. Verify that rcoleo::site_types() is up to date.")

  return(vec_sites[ind])

}
