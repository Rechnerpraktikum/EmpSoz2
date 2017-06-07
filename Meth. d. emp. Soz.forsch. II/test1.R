x <- read.table("dataset_test.csv", header=TRUE, sep=";")
x1 <- x[,2:48]


# Antworten einer Frage umkehren (da negative Frage)
cols = c("C7", "C14", "F26")
x[ ,cols] = 5 - x[ ,cols]




library(REdaS)
library(rela)
library(psych)

bart_spher(x1) 

VSS.scree(x1)

pca.x1 <- principal(x1, 11, rotate = "none")
pca.x1





b <- cbind(x$F27,x$B3,x$B5,x$E15)
b
asd <- prcomp(b, scale  = TRUE)
asd

