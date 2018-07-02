#' ---
#' title: Make All
#' author: Keith Baggerly
#' date: "`r Sys.Date()`"
#' output: github_document
#' ---

library(here)
library(rmarkdown)

files_in_resources_to_run <- 
  c("course_goals.Rmd",
    "homework.Rmd",
    "notes_for_participants.Rmd")

for(i1 in 1:length(files_in_resources_to_run)){
  
  rmarkdown::render(here("resources", 
                         files_in_resources_to_run[i1]),
                    output_format = 
                      github_document(html_preview = TRUE, 
                                      toc = TRUE),
                    output_dir = here("resources"))
  
}

rmarkdown::render(here("README.Rmd"),
                  output_format = 
                    github_document(html_preview = TRUE, 
                                    toc = TRUE),
                  output_dir = here())
