advert <- read.csv('http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv')
#Statistical summary
summary.advert <- summary(advert[2:5])
#Histograms

png(file = "../../images/histogram-tv.png")
hist(advert$TV, main = "TV Advertisement Budget (in thousands of dollars)", xlab = "Budget", col = "green")
dev.off()

png(file = "../../images/histogram-sales.png")
hist(advert$Sales, main = "Sales (in thousands of units)", xlab = "Number of Sales", col = "red")
dev.off()

png(file = "../../images/histogram-radio.png")
hist(advert$Radio, main = "Radio Advertisement Budget (in thousands of dollars)", xlab = "Budget", col = "blue")
dev.off()

png(file = "../../images/histogram-newspaper.png")
hist(advert$Newspaper, main = "Newspaper Advertisement Budget (in thousands of dollars)", xlab = "Budget", col = "purple")
dev.off()

#Matrix of Correlation
mat.cor <- cor(advert[2:5])

#Scatterplot Matrix 
png(file = "../../images/scatterplot-matrix.png")
pairs(mat.cor, main = "Scatterplot Matrix")
dev.off()

#Saving the output to a .txt file
sink("../../data/eda-output.txt")
summary.advert
mat.cor
sink()

#Saving the correlation matrix to a Rdata file
save(mat.cor, file = "../../data/correlation-matrix.Rdata")


