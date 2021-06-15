library(remotes)
bioc = remotes:::bioc_version()

# CRAN repos snapshot
when = '2018-10-24'
repos = list(snapshot = paste0('http://mran.revolutionanalytics.com/snapshot/', when),
             cran = 'https://cloud.r-project.org/',
             bioc = paste0('https://bioconductor.org/packages/', bioc, '/bioc'),
             bioc_annot = paste0('https://bioconductor.org/packages/', bioc, '/data/annotation'),
             bioc3.8 = 'https://bioconductor.org/packages/3.8/bioc'
             )
options(repos = list(CRAN = repos$snapshot))


# install CRAN packages - with specific versions
pkgs = list('igraph'    = '1.2.2',
            'pcaPP'     = '1.9-73',
            'lsa'       = '0.73.1',
            'arules'    = '1.6-1',
            'lawstat'   = '3.2',
            'vegan'     = '2.5-2', 
            'mclust'    = '5.4.1',
            'ClusterR'  = '1.1.6',
            'corpcor'   = '1.6.9',
            'precrec'   = '0.11.2',
            'this.path' = '0.2.0',
            'patchwork' = '1.0.0')
for (pkg in names(pkgs)){
    ver = pkgs[[pkg]]
    install_version(pkg, version=ver, repos=repos$cran) # upgrade='never')
}
install.packages(c('ggpubr', 
                   'aggregation', 
                   'progress', 
                   'scico', 
                   'ggridges', 
                   'Polychrome',
                   'ggalt',
                   'zCompositions'))
install_github('dgrtwo/drlib')

# install EGAD, scran
pkgs = list('scran' = c('1.10.2', repos$bioc3.8),
            'EGAD'  = c('1.8.0', repos$bioc))
for (pkg in names(pkgs)){
  ver = pkgs[[pkg]][1]
  rep = pkgs[[pkg]][2]
  if (pkg == 'scran'){
    install_version('BiocNeighbors', repos=repos$bioc3.8)
  }
  install_version(pkg, version=ver, repos=rep)
}

# install WGCNA 
dependencies = list('impute'          = repos$bioc,
                    'preprocessCore'  = repos$bioc,
                    'AnnotationDbi'   = repos$bioc,
                    'org.Hs.eg.db'    = repos$bioc_annot,
                    'org.Mm.eg.db'    = repos$bioc_annot,
                    'GO.db'           = repos$bioc_annot)
for (pkg in names(dependencies)){
  rep = dependencies[[pkg]]
  install_version(pkg, repos=rep)
}
install_version('WGCNA', version='1.66', repos=repos$cran) 

# install dismay and flavin
install.packages(c('pbapply', 'philentropy'))
devtools::install_github(c('suzannejin/dismay', 'skinnider/flavin'))

# install propr
install_github('suzannejin/propr@v4.0.0')
libpath = .libPaths()[1]
proprs = list(tpq = paste0(libpath, '/propr_tpq'),
              sjin = paste0(libpath, '/propr_sjin'))
dir.create(proprs$tpq); dir.create(proprs$sjin)
install_github('tpq/propr@2bd7c44bf59eaac6b4d329d38afd40ac83e2089a', lib=proprs$tpq)
install_github('suzannejin/propr', lib=proprs$sjin)
