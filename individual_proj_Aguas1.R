install.packages("twitteR")
install.packages("ggplot2")

library(twitteR)
library(rtweet)
library(dplyr)
library(ggplot2)
library(plotly)


CONSUMER_SECRET <- "EmH5TYf5X0vYCiKwxb8GaCCwZ2DR7094qMA9hb4tXjdoE4W27A"
CONSUMER_KEY <- "Az08rualcz9xPB2uAA3bDRftn"
ACCESS_SECRET <- "gYDcMWu6JQLMR7wT3osJq6itQD9YXHek9r44wp8tOo0pT"
ACCESS_TOKEN <- "1595060341146234880-s3E81fGpab6vA3xWJIPhpVAu7DTP8h"

setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)

Enhypentwts <- searchTwitter("Enhypen -filter:retweets",
                             n= 10000,
                             since= "2022-11-28",
                             until= "2022-12-6",
                             lang= "en",
                             retryOnRateLimit = 120)

trendtwts <- twListToDF(Enhypentwts)
class(trendtwts)
names(trendtwts)
View(trendtwts)
head(trendtwts)[1:5]
head(trendtwts$text)[1:5]

save(trendtwts,file = "TrendTweetsD.Rdata")
load(file = "TrendTweetsD.Rdata")
save(trendtwts, file = "trenddata2.Rdata")

#subsetting

datatrend <- trendtwts %>%
  select(screenName,text,created,statusSource)
datatrend

#group data

datatrend %>% 
  group_by(1) %>%
  summarise(max = max(created), min = min(created))

newg <- datatrend %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
newg

datatrend %>% pull(created) %>% min()
datatrend %>% pull(created) %>% max()

#plotting

#ggplot

ggplot(data = datatrend, aes(x = created)) + geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") + xlab("Time") + ylab("Number of Tweets") +
  scale_fill_gradient(low = "green", high = "pink")

#plotly

gpltly <- newg %>%
  dplyr::count(Created_At_Round) %>%
  ggplot(mapping = aes(x = Created_At_Round, y = n)) + theme_light() +
  geom_line() + xlab(label = 'Date') + ylab(label = NULL) +
  ggtitle(label = 'Number of Tweets Per Hour')
gpltly %>% ggplotly()

#status source

encodeSource <- function(x) {
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

datatrend$tweetSource = sapply(datatrend$statusSource, 
                               encodeSource)

appsource_twts <- datatrend %>% 
  select(tweetSource) %>%
  group_by(tweetSource) %>%
  summarize(count=n()) %>%
  arrange(desc(count))

ggplot(datatrend[datatrend$tweetSource != 'others',], aes(tweetSource, fill = tweetSource)) +
  geom_bar() + theme(legend.position="none", axis.title.x = element_blank(),
                     axis.text.x = element_text(angle = 45, hjust = 1)) +
  ylab("Number of Tweets") + ggtitle("Tweets by Source")

#accs that tweets about enhypen

screenname_twt <- datatrend %>%
  select(screenName) %>%
  group_by(screenName) %>%
  summarize(count=n()) %>%
  arrange(desc(count)) 

#corpus

screenCrps <- Corpus(VectorSource(datatrend$screenName))  
class(datatrend$screenName)

enhadata <- class(VectorSource(datatrend$screenName))
enhadata

str(screenCrps)

class(screenCrps)

endata <- screenCrps
endata

#wordcloud

pal11 <- brewer.pal(8, "Dark2")
pal21 <- pal11[-(1:4)]
set.seed(123)

par(mar = c(0,0,0,0), mfrow = c(1,1))

wordcloud(words = screenCrps, scale=c(3,0.5),
          max.words=10000,
          random.order=FALSE,
          rot.per=0.5,
          use.r.layout=TRUE,
          colors=pal11)







