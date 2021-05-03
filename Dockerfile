# Docker inheritance
FROM bioconductor/bioconductor_docker:RELEASE_3_12  

# snapshot date 
ARG WHEN="2020-12-17"

# install CRAN packages
#   optparse : manage input parameters
#   this.path : manage script paths
#   zCompositions : manage zeros
#   doMC : enable parallelization
#   rgl : 3D network plot
#   dismay dependencies: arules, gtools, lsa, pbapply, pcaPP, philentropy, WGCNA, Rdpack
RUN R -e "options(repos = \
  list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/${WHEN}/')); \
  install.packages(c('optparse', \
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
                     'corpcor' \
                     ))"

# install WGCNA and dependencies
RUN R -e "BiocManager::install(c('impute', \
                                 'preprocessCore', \
                                 'AnnotationDbi', \
                                 'org.Hs.eg.db', \
                                 'GO.db'))"
RUN R -e "options(repos = \
  list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/${WHEN}/')); \
  install.packages('WGCNA')"

# install dismay
RUN R -e "devtools::install_github('suzannejin/dismay')"

# install propr
# RUN R -e "BiocManager::install('propr')"
RUN R -e "devtools::install_github('suzannejin/propr')"
