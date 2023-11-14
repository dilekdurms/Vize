# 1.1
url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
download.file(
  url, destfile = "MapsThatChangedOurWorld_StoryMap_Data.csv", mode = "wb")

# 1.2
maps <- read.csv("MapsThatChangedOurWorld_StoryMap_Data.csv", sep=";",header=TRUE)

# 1.3
maps$Latitude <- as.numeric(gsub("N", "", maps$Latitude))

# 1.4
idx <- which(grepl("W", maps$Longitude))

# 1.5
maps$Longitude <- as.numeric(gsub("[EW]", "", maps$Longitude))
