#' EPSA Papers
#'
#' @source EPSA Papers. Scraped from EPSA conference program.
#' @format A data frame with columns:
#' \describe{
#'  \item{title}{paper title}
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


#' Page with titles
#'
#' @source EPSA Paper titles. Scraped from EPSA conference program.
#' @format A list format webpage with paper titles
#' @examples
#' \dontrun{
#'  titlepage
#' }
"titlepage"

#' Page with authors
#'
#' @source EPSA Paper authors. Scraped from EPSA conference program.
#' @format A list format webpage with author names
#' @examples
#' \dontrun{
#'  authorpage
#' }
"authorpage"

#' Page with quotes
#'
#' @source Quotes to scrape webpage
#' @format A list format webpage with quotes
#' @examples
#' \dontrun{
#'  quotepage
#' }
"quotepage"