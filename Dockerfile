FROM satijalab/seurat:4.3.0
RUN apt update && \
    apt install -y libfontconfig1-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev
RUN R -e 'install.packages("tidyverse", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(tidyverse)' && \
    R -e 'install.packages("Matrix", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(Matrix)' && \
    R -e 'install.packages("airr", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(airr)' && \
    R -e 'install.packages("alakazam", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(alakazam)' && \
    R -e 'install.packages("data.table", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(data.table)' && \
    R -e 'install.packages("dplyr", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(dplyr)' && \
    R -e 'install.packages("dsb", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(dsb)' && \
    R -e 'install.packages("ggplot2", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(ggplot2)' && \
    R -e 'install.packages("gplots", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(gplots)' && \
    R -e 'install.packages("lubridate", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(lubridate)' && \
    R -e 'install.packages("methods", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(methods)' && \
    R -e 'install.packages("purrr", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(purrr)' && \
    R -e 'install.packages("readr", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(readr)' && \
    R -e 'install.packages("scoper", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(scoper)' && \
    R -e 'install.packages("shazam", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(shazam)' && \
    R -e 'install.packages("tibble", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(tibble)' && \
    R -e 'install.packages("tidyr", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(tidyr)'

RUN R -e 'install.packages("BiocManager", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'BiocManager::install(c("Biostrings", "GenomicAlignments", "limma", "demuxmix"))'

RUN pip3 install changeo
