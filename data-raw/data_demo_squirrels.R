## code to prepare `data_demo_squirrels` dataset goes here
library(readr)

data_demo_squirrels <- dplyr::sample_n(
  read_csv("data-raw/nyc_squirrels_reduced.csv"), size=25)

#Pour créer mon point Rda
usethis::use_data(data_demo_squirrels, overwrite = TRUE)

# générer un template de documentation doc_my_dataset.R, dans le dossier R/
checkhelper::use_data_doc("data_demo_squirrels", prefix = "doc_")

# génère la documentation LateX dans le dossier man/
attachment::att_amend_desc()
