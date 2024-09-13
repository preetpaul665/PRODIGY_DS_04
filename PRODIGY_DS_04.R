# PRODIGY_DS_04

# ANALYSING AND VISUALIZING SENTIMENT PATTERNS IN SOCIAL MEDIA DATA SET

# Loading the packages 

library(ggplot2)
library(syuzhet)
library(tidyverse)
library(wordcloud)
library(stringr)

# Loading the training dataset

twitter <- read.csv("C:\\Users\\PREET PAUL\\Desktop\\Presidency University M.Sc. Notes\\Prodigy Infotech\\twitter_training.csv")
View(twitter)
dim(twitter)  # dimension of the training data set

# Checking for any missing values
which(is.na(twitter))

# Convert to character vector to prepare analysis

?iconv()

statement <- iconv(twitter$im.getting.on.borderlands.and.i.will.murder.you.all..)
att <- iconv(twitter$Positive)  ## 'att' stands for attitude variable in the dataset 

# Checking the wordcloud

?wordcloud
?brewer.pal()

wordcloud(statement, colors = brewer.pal(50, "Spectral"), min.freq = 20)
wordcloud(att, colors = brewer.pal(10, "Spectral"), min.freq = 20)

# Get Sentiments

?get_nrc_sentiment()

s1 <- get_nrc_sentiment(statement)
head(s1)


# check on bar plot

barplot(colSums(s1), las = 2, col = brewer.pal(10, "Spectral"),
        ylab = "Count", main = "Sentiment scores of social media")





