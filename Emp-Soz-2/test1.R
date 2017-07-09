x <- read.table("data/dataset.csv", header=TRUE, sep=";")

# Antworten einer Frage umkehren (da negative Frage)
cols = c("C7", "C14" , "F26")
x[ ,cols] = 5 - x[ ,cols]

# Relevante Werte PCA
x1 <- x[,c(14:19)]
x1




library(REdaS)
library(rela)
library(psych)

bart_spher(x1) 

VSS.scree(x1)

pca.x1 <- principal(x1, nfactors = 2, rotate = "varimax")
pca.x1


print(KMOS(x1), vars = 1:6, sort = TRUE)


pca.x1 <- principal(x1, 2)
pca.x1$criteria <- NULL
print(pca.x1, sort = TRUE, cut = 0.5, digits =2)

fa.diagram(pca.x1, cut = 0.5, cex = 0.8, rsize = 0.5, main="titel")

b <- cbind(x$F27,x$B3,x$B5,x$E15)
b
asd <- prcomp(b, scale  = TRUE)
asd

