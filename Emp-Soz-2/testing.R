library(readr)
dataset_test <- read_delim("data/dataset.csv", ";", escape_double = FALSE, trim_ws = TRUE)
View(dataset_test)

barplot(table(dataset_test$I_sex), names.arg = c("male", "female"))

barplot(dataset_test$I_age)
age <- dataset_test$I_age
mean(age)
sd(age)

library(ggplot2)
?ggplot


