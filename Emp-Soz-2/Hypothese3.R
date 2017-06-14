x <- read.table("data/dataset.csv", header=TRUE, sep=";") 
attach(x) 

## fBattE -> alle fragen der Batterie E
fBattE <- data.frame(E15,E16,E17,E18,E19,E20,E21,E22) 
fBattE_round <- round(c(rowMeans(frageBatterieE[,-1]))) 
dfHyp3 <- data.frame(D0,fBattE_round) 
dimnames(dfHyp3) <- list(Frage, c("neg. Headline", "Mean E")) 
dfHyp3 
daten <- table(D0,fBattE_round) 
dimnames(daten) <- list(c("täglich", "wöchentlich", "monatlich", "nie"), c("trifft zu","trifft eher zu", "trifft eher nicht zu", "trifft nicht zu")) 
daten 
chisq.test(daten) 

