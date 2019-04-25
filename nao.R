# Load the psych package for correlation analysis
library(psych)

# Read data as data frame for temperature changes in four stations and NOA index
nao<-read.csv("nao-index.csv",sep = ",",header = TRUE)

# Clean the rows for missing NAO index values
nao.cleaned<-subset(nao,!is.na(nao$NAtl..Oscillation))

# Statistical summary of data
describe(nao.cleaned[2:6])

# Correlation plot of data
pairs.panels(nao.cleaned[2:6])

# Correlation test using Pearson method
print(corr.test(nao[2:6],method = "pearson"),short=FALSE)