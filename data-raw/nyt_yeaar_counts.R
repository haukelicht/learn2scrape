# nyt_year_counts

# setup ----
library(httr)

# helper functions ----

#' @param q a character value used to search for matching articles
#' @param since an integer/character values specifying the 'begin' date (format: 'YYYYmmdd')
#' @param until an integer/character values specifying the 'end' date (format: 'YYYYmmdd')
nyt_count <- function(q, since, until){

  # construct API query
  params <- list(
    "q" = q,
    "api-key" = apikey,
    "begin_date" = since,
    "end_date" = until
  )
  # query API
  resp <- GET(endpoint, query = params, timeout(30))
  # parse response
  dat <- content(resp, "parsed")
  # return number of hits
  return(dat$response$meta$hits)
}

#' @param q a character value used to search for matching articles
#' @param years an integer vector specifying years (e.g., `1990:1992`)
nyt_years_count <- function(q, years){

  # initialize final counts vector with missings
  out <- setNames(rep(NA_integer_, length(years)), years)

  # iterate over years
  for (year in years){
    message(year)

    # retrieve count
    cnt <- nyt_count(
      q = q
      , since = as.integer(paste0(year, "0101"))
      , until = as.integer(paste0(year, "1231"))
    )

    # add year count (if not missing)
    if (!is.null(cnt)) {
      out[as.character(year)] <- cnt
    } else {
      # (if missing, raise warning and continute)
      warning(
        "could not retrieve count for year ", year,
        call. = FALSE,
        immediate. = TRUE
      )
    }

    # pause some (milli)seconds
    Sys.sleep(runif(1, 2, 3))
  }

  # return counts
  return(out)
}

# query counts ----

endpoint <- "http://api.nytimes.com/svc/search/v2/articlesearch.json"
apikey <- 'b75da00e12d54774a2d362adddcc9bef'

nyt_year_counts <- nyt_years_count(q = "democracy", years = 2000:2020)

usethis::use_data(nyt_year_counts, nyt_year_counts, overwrite = TRUE)

