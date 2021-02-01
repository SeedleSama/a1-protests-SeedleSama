library("stringr")
protests_df <- read.csv("data.csv", stringsAsFactors = FALSE)
locations_vector <- protests_df$Location
count_in_location <- function(location_name, locations_vector) {
    count <- sum(str_detect(locations_vector, location_name))
    count
}