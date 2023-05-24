install.packages("meta")

library(tidyverse)
library(meta)

getwd()

setwd(
  "C:\\Users\\robso\\Projects\\Reproducible Research\\RRcourse2023\\13. Metaanalysis"
)

data <- readxl::read_excel("data/metaanalysis_data.xlsx")

data %>% glimpse()

m <- metagen(
  TE = Mean_boys_play_male,
  seTE = SD_boys_play_male,
  data = data,
  studlab = paste(Study),
  comb.fixed = TRUE,
  comb.random = FALSE
)

m

m_re <- metagen(
  TE = Mean_boys_play_male,
  seTE = SD_boys_play_male,
  data = data,
  studlab = paste(Study),
  comb.fixed = FALSE,
  comb.random = TRUE
)

m_re

m %>% forest(sortvar = TE)
m_re %>% forest(sortvar = TE)

