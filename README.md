# naturalist-migration
This project  facilitates the running of R-scripts for migrating media-files and data from naturforskaren.se (source) to a mediaserver (target).

## pre-req.
you need to have installed Docker CE (Community Edition) on your system.
https://docs.docker.com/engine/installation/


## Running RStudio in your local browser.
This project pulls down an image from dockerhub ( https://hub.docker.com/r/raquamaps/mirroreum/ ) that makes it possible for you to run rstudio (https://www.rstudio.com/) in your webbrowser.
The benefit comparing to your local installation of RStudio is that you do not have to install all the dependencies ( packages and sometimes system-libraries that may be neccisary)

## how to start.
1. make (The makefile pulls down the 'raquamaps/mirroreum:v0' from dockerhub and runs it)
2. make start-ui (starts a browser (credentials are rstudio/rstudio)