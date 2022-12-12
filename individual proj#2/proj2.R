

# proj-2A

library("syuzhet")
library("wordcloud")
library("plotly")
library("tm")
library("tidytext")
library("dplyr")
library("RColorBrewer")
library("ggplot2")
library("magrittr")
library("stringr")
library("twitteR")

CONSUMER_SECRET <- "c4lW91jDaRUgzFAvOr0YleNYVEm17ZTnEHnMsvlDcjKSJnBJXg"
CONSUMER_KEY <- "pgjt5UWX2uzuK6qRwHowEPPXq"
ACCESS_SECRET <- "txachtOgZ7L0dyj9vAswZkfGjtJMfU4fVvRdAyEo3jNg0"
ACCESS_TOKEN <- "1594899110103986176-QoH3VZuNGyLd8RBuY6cnFR4lN6obA4"

setup_twitter_oauth(consumer_secret = CONSUMER_SECRET,
                    consumer_key = CONSUMER_KEY,
                    access_secret = ACCESS_SECRET,
                    access_token = ACCESS_TOKEN)

#get 10000 tweets excluding retweets.

trendTweets <- searchTwitter("Ukraine", n = 10000,lang = "en",
                             since = "2022-11-24",
                             until = "2022-12-30",retryOnRateLimit=120)


# Data frame
ukraineDF <- twListToDF(trendTweets)

#save and load
save(ukraineDF, file = "ukraineDF.Rdata")
load(file = "ukraineDF.Rdata")

saple_data <- sapply(ukraineDF, function(x) sum(is.na(x)))

#Subsetting dplyr

ukraine_tweets <- ukraineDF %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == FALSE)
save(ukraine_tweets, file = "ukraine_tweetsF.Rdata")
load(file = "ukraine_tweets.Rdata")

#Arrange data 
ukraine_tweets %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

ukrainedata <- ukraine_tweets %>%  mutate(Created_At_Round = created %>% 
                round(units = 'hours') %>% as.POSIXct())

slava <- ukraine_tweets %>% pull(created) %>% min()

ukrani <- ukraine_tweets %>% pull(created) %>% max()

#Plotting tweets using ggplot and library

Slavaplot <- ggplot(ukrainedata, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "grey", high = "blue")

Slavaplot %>% ggplotly()

#Retweets
ukraineretweets <- ukraineDF %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == TRUE)

#Arranging the data
ukraineretweets %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

ukraineretweets2 <- ukraineretweets %>%  mutate(Created_At_Round = 
                        created %>% round(units = 'hours') %>% as.POSIXct())

slava <- ukraineretweets %>% pull(created) %>% min()

ukrani <- ukraineretweets %>% pull(created) %>% max()


#Plotting the retweets using gglplot and library

zelensky <- ggplot(ukraineretweets2, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "yellow", high = "blue")

zelensky %>% ggplotly()


















