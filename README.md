# learn2scrape: Learn to Web Scrape

This package enables to learn web scraping in R with interactive tutorials.
It accompanies the *GESIS Fall Seminar in Computational Social Sciences 2021* course "Automated Web Data Collection in R".
 
## Installation

```r
remotes::install_github("haukelicht/learn2scrape", ref = "gesis2021")
```

## Tutorials

To **view all tutorials** included in the learn2scrape package, call

```r
available_tutorials(package = 'learn2scrape')
```

This lists all tutorials, mapping tutorial IDs (e.g. '001-tutorial-how-to'), to titles (e.g., 'Interactive learning with \`learnr\` tutorials').

To **launch a tutorial**, call 

```r
run_tutorial('001-tutorial-how-to', package = 'learn2scrape')
```

If you are running R using the Rstudio IDE (≥ version 1.3), you can alternatively launch tutorials using the *Tutorial* panel (see [this blog post]( https://blog.rstudio.com/2020/02/25/rstudio-1-3-integrated-tutorials/) for instructions).

## Feedback and Issues

Please contact [Hauke Licht](mailto:hauke.licht@uzh.ch) or [Theresa Gessler](mailto:gessler@ipz.uzh.ch) with feedback.

Should you encounter any problems when trying to launch tutorials or run code in a tutorial, please open an Issue on Github at https://github.com/haukelicht/learn2scrape/issues.




