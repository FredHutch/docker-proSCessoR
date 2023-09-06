FROM satijalab/seurat:4.3.0
RUN R -e 'install.packages("tidyverse", dependencies=TRUE, repos="http://cran.rstudio.com/")'