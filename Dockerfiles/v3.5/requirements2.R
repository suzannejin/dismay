library(remotes)
bioc = remotes:::bioc_version()

# CRAN repos snapshot
when = '2020-12-17'
repos = list(snapshot = paste0('http://mran.revolutionanalytics.com/snapshot/', when),
             cran = 'https://cloud.r-project.org/',
             bioc = paste0('https://bioconductor.org/packages/', bioc, '/bioc'),
             bioc_annot = paste0('https://bioconductor.org/packages/', bioc, '/data/annotation'),
             bioc3.8 = 'https://bioconductor.org/packages/3.8/bioc'
             )
options(repos = list(CRAN = repos$snapshot))

install.packages('data.table')