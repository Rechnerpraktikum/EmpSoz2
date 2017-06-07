library(readr)
dataset_test <- read_delim("~/WU Wien/SoSe 17/4316 - Wahlfach Kurs II - Methoden der empirischen Sozialforschung/Meth. d. emp. Soz.forsch. II/dataset_test.csv", ";", escape_double = FALSE, trim_ws = TRUE)
View(dataset_test)

barplot(table(dataset_test$I_sex), names.arg = c("male", "female"))

barplot(dataset_test$I_age)
age <- dataset_test$I_age
mean(age)
sd(age)

library(ggplot2)
?ggplot
