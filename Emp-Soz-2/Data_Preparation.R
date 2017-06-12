x <- read.table("dataset_test.csv", header=TRUE, sep=";")
x1 <- x[,2:48]


# Antworten einer Frage umkehren (da negative Frage)
cols = c("C7", "C14", "F26")
x[ ,cols] = 5 - x[ ,cols]

#Bartlett Test?