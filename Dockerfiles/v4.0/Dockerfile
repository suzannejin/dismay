# Docker inheritance
FROM bioconductor/bioconductor_docker:RELEASE_3_12  

# snapshot date 
ARG WHEN="2020-12-17"

# install CRAN packages
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
                     'corpcor', \
                     'tidyverse', \
                     'ontologyIndex', \
                     'patchwork', \
                     'ggridges', \
                     'ggsci', \
                     'ggpubr', \
                     'cowplot', \
                     'Polychrome', \
                     'ggalt', \
                     'scico', \
                     'precrec', \
                     'lawstat', \
                     'aggregation' \
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
RUN R -e "install.packages('https://cran.r-project.org/src/contrib/Archive/propr/propr_4.0.0.tar.gz')"
RUN R -e "devtools::install_github(c('suzannejin/dismay', \
                                     'skinnider/flavin', \
                                     'sarbal/EGAD', \
                                     'dgrtwo/drlib' \
                                     ))"
