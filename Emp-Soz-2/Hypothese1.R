## fBattB -> alle fragen der Batterie E
fBattB <- data.frame(B1,B2,B3,B4,B5,B6)
fBattB_round <- round(c(rowMeans(fBattB[,-1]))) 
qualMedien <- data.frame(A4,A5,A6,A7)
colsA = c("A4", "A5", "A6", "A7")       #qualitätsmedien auswählen
qualMedien[ ,colsA] = 4 - qualMedien[ ,colsA]    #gewichtung 3 täglich, 2 wochentlich, 1 monatlich
qualMedien[qualMedien == 0] <- NA       # 0 durch na ersetzten
qualMedien_round <- round(c(rowMeans(qualMedien[,-1], na.rm = TRUE))) #mean ohne 0 werte berechnen
qualMedien_round[is.na(qualMedien_round)] <- 0  # 0 wieder einsetzen
qualMedien_round = 4 - qualMedien_round
dfHyp1 <- data.frame(qualMedien_round, fBattB_round)
             
dimnames(dfHyp1) <- list(Frage, c("qual. Medien", "Mean B")) 
dfHyp1
daten <- table(qualMedien_round,fBattB_round) 
dimnames(daten) <- list(c("täglich", "wöchentlich", "monatlich", "nie"), c("trifft zu","trifft eher zu", "trifft eher nicht zu", "trifft nicht zu")) 
daten 
chisq.test(daten) 

spineplot(t(daten))
