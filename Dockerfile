FROM satijalab/seurat:4.3.0
RUN apt update && \
    apt install -y libfontconfig1-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev
RUN R -e 'install.packages("tidyverse", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(tidyverse)'