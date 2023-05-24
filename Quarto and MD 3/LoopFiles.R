# Rendering
library(quarto)
setwd('C:/Users/robso/Projects/Reproducible Research/RRcourse2023/Quarto and MD 3')
for (i in 1:8){
quarto_render("Assignment.qmd", execute_params = list(
  season = i
), output_file = paste0("Report-",i,".html"))
  
}
