# Docker inheritance
FROM rocker/tidyverse:3.5.0

# install linux dependencies
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
    libgmp3-dev \
    libjpeg-dev \
    libtiff-dev \
    libxt-dev \
    libgit2-dev \
    libbz2-dev \
    procps


# install R packages
ADD requirements.R /tmp/requirements.R 
RUN Rscript /tmp/requirements.R

