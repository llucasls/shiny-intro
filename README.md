# Shiny Intro

This application (mostly) follows a [Shiny](https://shiny.rstudio.com/)
tutorial: https://mastering-shiny.org/basic-app.html

The purpose is to create an interactive web application using R.

In order to run the application, you can use the command:
```{sh}
Rscript app.R
```
By default, it uses port 4000. If you want to especify a different port, you can pass it to Rscript
as an environment variable, or edit the `.Renviron` file. The .Renviron takes priority.

For example:
```{sh}
PORT=5000 Rscript app.R
```
Warning: if you try to use the `littler` package to run this app (as in `r app.R`) it won't work.

## Status

Currently on section [2.2](https://mastering-shiny.org/basic-ui.html#inputs)
