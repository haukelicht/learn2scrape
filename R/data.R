#' EPSA Papers
#'
#' @source EPSA Papers. Scraped from EPSA conference program.
#' @format A data frame with columns:
#' \describe{
#'  \item{title}{paper title}
#'  \item{author1}{first author}
#'  \item{author2}{second author}
#'  \item{author3}{third author}
#'  \item{author4}{fourth author}
#'  \item{author5}{fifth author}
#'  \item{author6}{sixth author}
#'  \item{institution1}{first author}
#'  \item{institution2}{second institution}
#'  \item{institution3}{third institution}
#'  \item{institution4}{fourth institution}
#'  \item{institution5}{fifth institution}
#'  \item{institution6}{sixth institution}
#'  \item{section}{EPSA section}
#'  \item{abstracts}{Paper abstract}
#'  \item{panel}{Panel location}
#'  \item{url}{relative path to abstract}
#' }
#' @examples
#' \dontrun{
#'  epsa_paper
#' }
"epsa_paper"

#' German cabinets
#'
#' A list of URLs to German cabinets listed on \url{https://whogoverns.eu}
#'
#' A list. Names specifying cabinet names; values corresponding URLs.
#'
#' @source \url{https://whogoverns.eu/cabinets/?view=pais&codigo=de}
"german_cabinets"


#' Count of NYT articles containing the term "democracy" for years between 2000 and 2020
#'
#' A vector of integer values named by years.
#'
#' An integer vector. Names specifying year; values record article counts.
#'
#' @source \url{http://api.nytimes.com/svc/search/v2/articlesearch.json}
"nyt_year_counts"
