# Dockerfile of Rstan and cmdstanr

This is a Dockerfile of Rstan and cmdstanr in Rstudio. This Dockerfile is based on rocker/tidyverse.

Maintainer is Yoshihiko Kunisato (ykunisato@psy.senshu-u.ac.jp)

Keywords: rstudio, rstan, cmdstanr

## Usage

1. Install ["Docker Desktop"](https://www.docker.com/products/docker-desktop)

2. Open "terminal"(Mac) or Command Prompt(Win, I don't know Win. Sorry!)

3. Type the following code to pull a Docker container. Change the "password" and "name_of_container" as you like.

```
docker run -e PASSWORD=password -p 8787:8787 -v $PWD:/home/rstudio -d --name name_of_container ykunisato/stan-r
```

4. Open the web browser and type "http://localhost:8787/" in the URL bar.

5. You will see the Rstudio on the web browser. Type rstudio in ID column and password that you set in password column.

