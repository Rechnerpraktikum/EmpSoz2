
## fBattE -> alle fragen der Batterie E
fBattE <- data.frame(E15,E16,E17,E18,E19,E20,E21,E22) 
fBattE_round <- round(c(rowMeans(fBattE[,-1]))) 
dfHyp3 <- data.frame(D0,fBattE_round) 
dimnames(dfHyp3) <- list(Frage, c("neg. Headline", "Mean E")) 
dfHyp3 
daten3 <- table(D0,fBattE_round) 
dimnames(daten3) <- list(c("täglich", "wöchentlich", "monatlich", "nie"), c("trifft zu","trifft eher zu", "trifft eher nicht zu", "trifft nicht zu")) 
daten3 
chisq.test(daten3) 

par(mar = c(10,10,4,2) + 0.1)
par(cex.lab = 3, cex.axis = 1.8)
spineplot(t(daten3), ylab = "Häufigkeit negative Headline",xlab = "Fragebatterie E", col = rainbow(5))

