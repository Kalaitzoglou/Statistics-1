#PART 0: Working Directory -----------------------------------------------------------------------

#find working directory
getwd()

#read the dataset into an R variable using the read.csv(file) function
linearRegression <- read.csv("dataset_linear_regression.csv")

#display the data
linearRegression

#plot the data
plot(linearRegression)

#PART 1: Normality Test---------------------------------------------------------------------------

#Shapiro-Wilk normality test for Response
#if P > 0.05, then the distribution is normal
shapiro.test(linearRegression$Response)

#Shapiro-Wilk normality test for Treatment
#if P > 0.05, then the distribution is normal
shapiro.test(linearRegression$Treatment)


#PART 2: Linear regression -----------------------------------------------------------------------

#use linear regression to fit the model
#Multiple R-squared is the Pearson's r (correlation coefficient) squared
#if Pr(>|t|) < .05, then the predictor variable significantly predicts the outcome variable
#under Estimate, the first value is the intercept (b0) and the second value is the gradient or slope (b1)
summary(lm(Response ~ Treatment, linearRegression))