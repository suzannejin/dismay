# Docker inheritance
FROM rstudio/r-base:3.4-bionic

# my snapshot date 
ARG WHEN="2020-12-17"

# install CRAN packages
RUN R -e "options(repos = \
  list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/${WHEN}/')); \
  install.packages(c('BiocManager', \
                     'optparse', \
                     'this.path', \
                     'zCompositions', \
                     'doMC', \
                     'rgl', \
                     'arules', \
                     'gtools', \
                     'lsa', \
                     'pbapply', \
                     'pcaPP', \
                     'philentropy', \
                     'Rdpack', \
                     'ppcor', \
                     'corpcor', \
                     'tidyverse', \
                     'ontologyIndex', \
                     'patchwork', \
                     'ggridges', \
                     'ggsci', \
                     'cowplot', \
                     'Polychrome', \
                     'ggalt', \
                     'scico', \
                     'precrec' \
                     ))"

# install WGCNA and dependencies
RUN R -e "BiocManager::install(c('impute', \
                                 'preprocessCore', \
                                 'AnnotationDbi', \
                                 'org.Hs.eg.db', \
                                 'org.Mm.eg.db', \
                                 'GO.db', \
                                 'arrayQualityMetrics', \
                                 'rtracklayer' \
                                 ))"
RUN R -e "options(repos = \
  list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/${WHEN}/')); \
  install.packages('WGCNA')"

# install dismay, flavin, propr
RUN R -e "devtools::install_github(c('suzannejin/dismay', \
                                     'skinnider/flavin', \
                                     'suzannejin/propr', \
                                     'sarbal/EGAD', \
                                     'dgrtwo/drlib' \
                                     ))"

