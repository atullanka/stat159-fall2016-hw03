advert <- read.csv('http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv')
#Regression Objects
lm.TV <- lm(advert$Sales ~ advert$TV)
lm.radio <- lm(advert$Sales ~ advert$Radio)
lm.newspaper <- lm(advert$Sales ~ advert$Newspaper)
lm.all <- lm(advert$Sales ~ advert$Newspaper+advert$Radio+advert$TV)

#Summary of regression objects
summary.lm.TV <- summary(lm.TV)
summary.lm.radio <- summary(lm.radio)
summary.lm.newspaper <- summary(lm.newspaper)
summary.lm.all <- summary(lm.all)

#Saving to a RData file
save(summary.lm.TV,summary.lm.radio, summary.lm.newspaper, summary.lm.all, file = "~/Documents/stat159-fall2016-hw03/data/regression.Rdata")

#Scatterplots for TV, radio and newspaper

plot(advert$TV, advert$Sales, main = "Scatter plot with Regression line",
     xlab = 'TV advertising (in thousands of dollars)',
     ylab = 'Sales (in thousands of units)', pch = 20)
#Adding the regression line
abline(lm.TV[[1]][[1]], lm.TV[[1]][[2]], col = 'blue', lwd = 1.5)
#Adding the vertical lines between the points and the regression line to depict accuracy
apply(cbind(advert$TV,advert$Sales,predict(lm.TV)),1,
      function(diff){lines(diff[c(1,1)],diff[2:3], col = 'red', lty = 2)})

plot(advert$Radio, advert$Sales, main = "Scatter plot with Regression line",
     xlab = 'Radio advertising (in thousands of dollars)',
     ylab = 'Sales (in thousands of units)', pch = 20)
#Adding the regression line
abline(lm.radio[[1]][[1]], lm.radio[[1]][[2]], col = 'blue', lwd = 1.5)
#Adding the vertical lines between the points and the regression line to depict accuracy
apply(cbind(advert$Radio,advert$Sales,predict(lm.radio)),1,
      function(diff){lines(diff[c(1,1)],diff[2:3], col = 'red', lty = 2)})

plot(advert$Newspaper, advert$Sales, main = "Scatter plot with Regression line",
     xlab = 'Newspaper advertising (in thousands of dollars)',
     ylab = 'Sales (in thousands of units)', pch = 20)
#Adding the regression line
abline(lm.newspaper[[1]][[1]], lm.newspaper[[1]][[2]], col = 'blue', lwd = 1.5)
#Adding the vertical lines between the points and the regression line to depict accuracy
apply(cbind(advert$Newspaper,advert$Sales,predict(lm.newspaper)),1,
      function(diff){lines(diff[c(1,1)],diff[2:3], col = 'red', lty = 2)})


#Residual plot, QQ plot and Scale Location
plot(lm.all, caption = list("Residuals vs Fitted", "Normal Q-Q","Scale-Location"))

