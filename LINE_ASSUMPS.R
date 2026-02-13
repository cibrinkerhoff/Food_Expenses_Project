food <- vroom :: vroom('FoodExpenses.txt')

head(food)


plot(food$Income, food$EatingOut, xlab = 'Income', ylab = 'Food Expenses', main = 'Food Expenses vs Income')
#line assumptions met

#create resids
model <- lm(EatingOut ~ Income, data = food)
resids <- resid(model)

#plot resids
plot(food$Income, resids, xlab = 'Income', ylab = 'Residuals', main = 'Residuals vs Income')
#problems with heteroskedasticity

#check normality of resids
qqnorm(resids)
qqline(resids)
hist(resids, xlab = 'Residuals', main = 'Histogram of Residuals')
#normality is met

