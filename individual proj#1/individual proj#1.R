install.packages('twitteR')
install.packages("tidytext")
install.packages("plotly")
install.packages("wordcloud")
install.packages("RColorBrewer")


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

setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)

trendTweets <- searchTwitter("#China -filter:retweets", n=10000, lang="en", since="2022-11-26", until="2022-12-2",
                             retryOnRateLimit = 120)

trendTweetsDF <- twListToDF(trendTweets)
class(trendTweetsDF)
names(trendTweetsDF)
View(trendTweetsDF)
head(trendTweetsDF)[1:5]
head(trendTweetsDF$text)[1:5]

save(trendTweetsDF,file = "trendingTweetsDF.Rdata")

load(file = "trendingTweetsDF.Rdata")

tweetsDF1 <- trendTweetsDF %>%
  select(screenName, text, created, statusSource)
save(tweetsDF1, file = "tweetsDF.Rdata")

#Checking missing values
nien <- sapply(trendTweetsDF, function(x) sum(is.na(x)))
nien
#Subsetting dyplr

tweetsDF0 <- trendTweetsDF %>%
  select(screenName,text,created,statusSource)
tweetsDF0

#Assembling the data created

tweetsDF0 %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

reviour <- tweetsDF1 %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
reviour

tweetsDF0 %>% pull(created) %>% min() 
tweetsDF0 %>% pull(created) %>% max()


#Arranging the plot usuing plotly and ggplot


#--------------

ggplot(data = tweetsDF1, aes(x = created)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "upper right") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "grey",high = "blue")

#Plotting
Sourceplotss <- function(x) {
  if(grepl(">Twitter for iPhone</a>", x)){
    "iphone"
  }else if(grepl(">Twitter for iPad</a>", x)){
    "ipad"
  }else if(grepl(">Twitter for Android</a>", x)){
    "android"
  } else if(grepl(">Twitter Web Client</a>", x)){
    "Web"
  } else if(grepl(">Twitter for Windows Phone</a>", x)){
    "windows phone"
  }else if(grepl(">dlvr.it</a>", x)){
    "dlvr.it"
  }else if(grepl(">IFTTT</a>", x)){
    "ifttt"
  }else if(grepl(">Facebook</a>", x)){  
    "facebook"
  }else {
    "others"
  }
}


tweetsDF0$tweetSource = sapply(tweetsDF0$statusSource,Sourceplotss)

tweetplotts <- tweetsDF0 %>% 
  select(tweetSource) %>%
  group_by(tweetSource) %>%
  summarize(count=n()) %>%
  arrange(desc(count)) 

ggplot(tweetsDF0[tweetsDF0$tweetSource != 'others',], aes(tweetSource, fill = tweetSource)) +
  geom_bar() +
  theme(legend.position="none",
        axis.title.x = element_blank(),
        axis.text.x = element_text(angle = 45, hjust = 1)) +
  ylab("Number of tweets") +
  ggtitle("Tweets by Source")

#Accounts that Tweets about China

tweetplotss <- tweetsDF0 %>%
  select(screenName) %>%
  group_by(screenName) %>%
  summarize(count=n()) %>%
  arrange(desc(count)) 


#CORPUS
corpse <- Corpus(VectorSource(tweetsDF1$screenName))  
class(tweetsDF1$screenName)

oiu <- class(VectorSource(tweetsDF1$screenName))
oiu

str(corpse)

class(corpse)

kin <- corpse
kin

# WORDCLOUD FOR SCREEN_NAMES.
cloud <- brewer.pal(8, "Dark2")
clouds <- cloud[-(1:4)]
set.seed(123)

par(mar = c(0,0,0,0), mfrow = c(1,1))

wordcloud(words = corpse, scale=c(3,0.5),
          max.words=500,
          random.order=FALSE,
          rot.per=0.5,
          use.r.layout=TRUE,
          colors=cloud)






