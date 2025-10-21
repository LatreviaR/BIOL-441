#Author:Latrevia Robinson,Date: 09/16/2025, Purpose: Microarray analysis

#Install package affy
#Load package affy

library(affy)

#Reading sample microarray data
setwd("/Users/latre/OneDrive/Desktop/data")

#Read raw microarray data
data <-ReadAffy()

#Boxplot raw data
boxplot(data)
 
#Perform normalization 
normdata <-rma(data)

#Plot normalized data
boxplot(exprs(normdata))

#Assume first 2 CEL files are cancer type and next 2 CEL files are normal/control
data2 <-exprs(normdata)
Treatment <- data2[,c(1:2)]
Control <- data2[,c(3:4)]




