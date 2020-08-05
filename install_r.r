# install rstan
install.packages("rstan", type = "source")

dotR <- file.path(Sys.getenv("HOME"), ".R")
if (!file.exists(dotR)) dir.create(dotR)
M <- file.path(dotR, ifelse(.Platform$OS.type == "windows", "Makevars.win", "Makevars"))
if (!file.exists(M)) file.create(M)
cat("\nCXX14FLAGS=-O3 -march=native -mtune=native",
    if( grepl("^darwin", R.version$os)) "CXX14FLAGS += -arch x86_64 -ftemplate-depth-256" else 
    if (.Platform$OS.type == "windows") "CXX11FLAGS=-O3 -march=corei7 -mtune=corei7" else
    "CXX14FLAGS += -fPIC",
    file = M, sep = "\n", append = TRUE)

# install CMDSTAN_HOME
install.packages("cmdstanr", repos = c("https://mc-stan.org/r-packages/", getOption("repos")))
install.packages("posterior", repos = c("https://mc-stan.org/r-packages/", getOption("repos")))
library(cmdstanr)
install_cmdstan("/home/rstudio/.cmdstanr")


install.packages(c("lmerTest",
"bayesplot",
"bridgesampling",
"psych"), error = TRUE, dependencies = TRUE)

remotes::install_github("paul-buerkner/brms")