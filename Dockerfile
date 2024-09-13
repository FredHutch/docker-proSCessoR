FROM satijalab/seurat:5.0.0
RUN apt update && \
    apt install -y libfontconfig1-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev
RUN R -e 'install.packages("tidyverse", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(tidyverse)'
RUN R -e 'install.packages("Matrix", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(Matrix)'
RUN R -e 'install.packages("airr", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(airr)'
RUN R -e 'install.packages("data.table", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(data.table)'
RUN R -e 'install.packages("dplyr", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(dplyr)'
RUN R -e 'install.packages("dsb", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(dsb)'
RUN R -e 'install.packages("ggplot2", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(ggplot2)'
RUN R -e 'install.packages("gplots", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(gplots)'
RUN R -e 'install.packages("lubridate", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(lubridate)'
RUN R -e 'install.packages("methods", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(methods)'
RUN R -e 'install.packages("purrr", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(purrr)'
RUN R -e 'install.packages("readr", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(readr)'
RUN R -e 'install.packages("tibble", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(tibble)'
RUN R -e 'install.packages("tidyr", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(tidyr)'

RUN apt install -y libbz2-dev
RUN R -e 'install.packages("BiocManager", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'BiocManager::install(version = "3.16")' && \
    R -e 'BiocManager::install(c("Biostrings", "GenomicAlignments", "limma", "demuxmix"))' && \
    R -e 'library(Biostrings)' && \
    R -e 'library(GenomicAlignments)' && \
    R -e 'library(limma)' && \
    R -e 'library(demuxmix)'

RUN R -e 'install.packages("alakazam", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(alakazam)'
RUN R -e 'install.packages("shazam", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(shazam)'
    RUN R -e 'install.packages("scoper", dependencies=TRUE, repos="http://cran.rstudio.com/")' && \
    R -e 'library(scoper)'

RUN pip3 install changeo
