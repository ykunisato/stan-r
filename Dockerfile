FROM rocker/tidyverse
LABEL maintainer="Yoshihiko Kunisato <kunisato@psy.senshu-u.ac.jp>"

# install clang for Rstan
RUN apt-get install -y clang make libjpeg-dev libv8-dev
RUN mkdir /home/rstudio/.cmdstanr

# install R packages
COPY install_r.r install_r.r
RUN ["r", "install_r.r"]