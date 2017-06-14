## fBattB -> alle fragen der Batterie E
fBattB <- data.frame(B1,B2,B3,B4,B5,B6)
fBattB_round <- round(c(rowMeans(fBattB[,-1]))) 
qualMedien <- data.frame(A4,A5,A6,A7)
