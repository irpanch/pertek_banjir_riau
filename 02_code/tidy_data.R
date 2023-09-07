# cek data

library(tidyverse)
library(readr)
library(dplyr)
library(lubridate)

rainfall_data <- read_csv("01_data/data_hujan_maksimum.csv")
View(rainfall_data)

r24_max <- rainfall_data %>% 
  subset(select = -Tahun)
r24_max <- apply(r24_max, 1, max, na.rm=TRUE)

library(extRemes)

