# Download the éCO2mix régional définitif dataset from datagouv
url <- "https://www.data.gouv.fr/api/1/datasets/r/4c308634-d76e-40b0-a777-ab99a8871564"
options(timeout = 300)
download.file(url, "data/data_eco2mix_regional.csv")

ds <- readr::read_csv2("data/data_eco2mix_regional.csv")

board <- pins::board_folder("data/", versioned = TRUE)
pins::pin_write(board, ds, name = "eco2mix_regional", type = "csv")