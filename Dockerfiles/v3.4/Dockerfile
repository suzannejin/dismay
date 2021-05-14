# Docker inheritance
FROM rocker/rstudio:3.4.0


# install openssl
RUN apt-get update \
	&& apt-get install -y --no-install-recommends apt-utils \
	&& apt-get install -y --no-install-recommends \
    libxml2-dev
RUN R -e "install.packages('https://cran.r-project.org/src/contrib/Archive/openssl/openssl_0.9.9.tar.gz', \
                            repos=NULL, type='source' \
                            )"

# Install igraph  (2017-07-21)
RUN R -e "install.packages(c('https://cran.r-project.org/src/contrib/Archive/pkgconfig/pkgconfig_2.0.1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/irlba/irlba_2.2.1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/igraph/igraph_1.1.2.tar.gz' \
                             ), \
                             repos=NULL, type='source' \
                             )"

# Install tidyverse (2017-11-14)
RUN R -e "install.packages(c('https://cran.r-project.org/src/contrib/Archive/assertthat/assertthat_0.2.0.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/Rcpp/Rcpp_0.12.14.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/bindr/bindr_0.1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/plogr/plogr_0.1-1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/bindrcpp/bindrcpp_0.2.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/DBI/DBI_0.7.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/glue/glue_1.2.0.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/rlang/rlang_0.1.4.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/utf8/utf8_1.1.2.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/crayon/crayon_1.3.4.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/cli/cli_1.0.0.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/pillar/pillar_1.0.1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/tibble/tibble_1.4.1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/purrr/purrr_0.2.4.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/R6/R6_2.2.2.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/BH/BH_1.65.0-1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/jsonlite/jsonlite_1.5.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/mime/mime_0.5.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/curl/curl_3.1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/hms/hms_0.4.0.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/cellranger/cellranger_1.0.0.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/readr/readr_1.1.1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/readxl/readxl_1.0.0.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/httr/httr_1.3.1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/plogr/plogr_0.1-1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/tidyselect/tidyselect_0.2.3.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/plyr/plyr_1.8.4.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/dplyr/dplyr_0.7.4.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/dbplyr/dbplyr_1.1.0.tar.gz' \
                             ), \
                             repos=NULL, type='source' \
                             )"
RUN R -e "install.packages(c('https://cran.r-project.org/src/contrib/Archive/tidyr/tidyr_0.7.2.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/mnormt/mnormt_1.5-5.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/psych/psych_1.7.8.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/reshape2/reshape2_1.4.3.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/broom/broom_0.4.3.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/digest/digest_0.6.13.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/forcats/forcats_0.2.0.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/gtable/gtable_0.2.0.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/RColorBrewer/RColorBrewer_1.0-5.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/dichromat/dichromat_1.2-4.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/colorspace/colorspace_1.3-2.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/munsell/munsell_0.4.3.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/labeling/labeling_0.3.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/viridisLite/viridisLite_0.2.0.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/scales/scales_0.5.0.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/lazyeval/lazyeval_0.2.1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/ggplot2/ggplot2_2.2.1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/haven/haven_1.1.0.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/lubridate/lubridate_1.7.1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/modelr/modelr_0.1.1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/callr/callr_1.0.0.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/clipr/clipr_0.4.0.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/evaluate/evaluate_0.10.1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/highr/highr_0.6.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/markdown/markdown_0.8.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/yaml/yaml_2.1.14.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/knitr/knitr_1.18.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/htmltools/htmltools_0.3.6.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/base64enc/base64enc_0.1-2.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/backports/backports_1.1.1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/rprojroot/rprojroot_1.2.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/rmarkdown/rmarkdown_1.8.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/whisker/whisker_0.3-2.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/reprex/reprex_0.1.1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/rstudioapi/rstudioapi_0.7.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/xml2/xml2_1.1.1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/selectr/selectr_0.3-1.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/rvest/rvest_0.3.2.tar.gz', \
                             'https://cran.r-project.org/src/contrib/Archive/tidyverse/tidyverse_1.2.1.tar.gz' \
                             ), \
                             repos=NULL, type='source' \
                             )"

# install magrittr
RUN R -e "install.packages('https://cran.r-project.org/src/contrib/Archive/magrittr/magrittr_1.5.tar.gz', \
                            repos=NULL, type='source' \
                            )"

# intall this.path
RUN R -e "install.packages('https://cran.r-project.org/src/contrib/Archive/this.path/this.path_0.1.0.tar.gz', \
                            repos=NULL, type='source' \
                            )"
