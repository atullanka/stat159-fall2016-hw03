advert <- read.csv('http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv')
#Statistical summary
summary.advert <- summary(advert[2:5])
#Histograms
hist(advert$TV, main = "TV Advertisement Budget (in thousands of dollars)", xlab = "Budget", col = "green")
hist(advert$Sales, main = "Sales (in thousands of units)", xlab = "Number of Sales", col = "red")
hist(advert$Radio, main = "Radio Advertisement Budget (in thousands of dollars)", xlab = "Budget", col = "blue")
hist(advert$Newspaper, main = "Newspaper Advertisement Budget (in thousands of dollars)", xlab = "Budget", col = "purple")

#Matrix of Correlation
mat.cor <- cor(advert[2:5])

#Scatterplot Matrix 
pairs(mat.cor, main = "Scatterplot Matrix")

#Saving the output to a .txt file
sink("eda-output.txt")
summary(advert[2:5])
cor(advert[2:5])
sink()

#Saving the correlation matrix to a Rdata file
save(list = mat.cor, file = "~/Documents/stat159-fall2016-hw03/data/correlation-matrix.Rdata")