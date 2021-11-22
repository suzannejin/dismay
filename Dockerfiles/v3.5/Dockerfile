# Docker inheritance
FROM rocker/tidyverse:3.5.0

ARG WHEN='2018-10-24'

# install linux dependencies
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
    libgmp3-dev \
    libjpeg-dev \
    libtiff-dev \
    libxt-dev \
    libgit2-dev \
    libgsl-dev \
    libbz2-dev \
    procps

# install proj.4
RUN wget https://download.osgeo.org/proj/proj-4.9.3.tar.gz \
    && tar -xf proj-4.9.3.tar.gz \
    && rm proj-4.9.3.tar.gz \
    && cd proj-4.9.3 \
    && ./configure \
    && make \
    && make install \
    && cd .. \
    && rm -r proj-4.9.3

# install R packages
ADD requirements.R /tmp/requirements.R 
ADD requirements2.R /tmp/requirements2.R 
RUN Rscript /tmp/requirements.R
RUN Rscript /tmp/requirements2.R
