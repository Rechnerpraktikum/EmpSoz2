dataset <- read.table("data/dataset.csv", header=TRUE, sep=";")
attach(dataset)

# Auswahl von Spalte 2 bis 48 (-> nur die Likert Skalen)
spalte2bis48 <- dataset[,2:48]


# Antworten einer Frage umkehren (da negative Frage)
cols = c("C7", "C14", "F26")
dataset[ ,cols] = 5 - x[ ,cols]