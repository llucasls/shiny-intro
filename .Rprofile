if (requireNamespace("jetpack", quietly=TRUE)) {
  jetpack::load()
} else {
  message("Install Jetpack to use a virtual environment for this project")
}
local({
  repos <- getOption("repos")
  repos["CRAN"] <- Sys.getenv("R_CRAN_URL", "https://cloud.r-project.org/")
  options(repos = repos)
})
