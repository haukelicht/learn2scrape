.onLoad <- function(libname, pkgname) {
  message("Loading package: learn2scrape")
  cat(
    paste(
      "\033[1mlearn2scrape\033[22m: \033[3mLearn web scraping in R with interactive tutorials!\033[23m"
      , ""
      , "  For instructions on how to launch interactive tutorials, call"
      , ""
      , "    run_tutorial('001-tutorial-how-to', package = 'learn2scrape')"
      , ""
      , "  To list all available tutorials, call"
      , ""
      , "    available_tutorials(package = 'learn2scrape')"
      , " "
      , sep = "\n"
    )
  )
}
