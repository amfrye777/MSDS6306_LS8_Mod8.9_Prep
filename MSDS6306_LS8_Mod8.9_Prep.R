library(ggplot2)
  ## Load Data
nyt1<-read.csv(file="D:/Documents/School/SMU/2016 Summer/MSDS 6306 - Into to Data Science/Assignments/Week 8/MSDS6306_LS8_Mod8.9_Prep/nyt1.csv",header = TRUE)

head(nyt1)
str(nyt1)

  
  ## Create age groups
nyt1$AgeGroup <- cut(nyt1$Age, c(-Inf, 18, 24, 34, 44, 54, 64, Inf))
levels(nyt1$AgeGroup) <- c("<18", "18-24", "25-34", "35-44", "45-54", "55-64", "65+")

  ## exclude records with zero impressions
d1 <- subset(nyt1, Impressions>0)

head(d1)
str(d1)

  ##Caluclate click-through-rate (CTR = click/impression) for the age groups 
d1$CTR <- d1$Clicks/d1$Impressions

head(d1)


