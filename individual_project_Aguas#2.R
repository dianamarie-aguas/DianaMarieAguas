#Project 2- AGUAS, DIANA MARIE

#Extract 10000 tweets from Twitter using twitteR package including retweets.
#Subset the retweets and the original tweets into a separate file
#Plot the retweets and the original tweets using bar graph in vertical manner.
#Include legends

#set up credentials

CONSUMER_SECRET <- "EmH5TYf5X0vYCiKwxb8GaCCwZ2DR7094qMA9hb4tXjdoE4W27A"
CONSUMER_KEY <- "Az08rualcz9xPB2uAA3bDRftn"
ACCESS_SECRET <- "gYDcMWu6JQLMR7wT3osJq6itQD9YXHek9r44wp8tOo0pT"
ACCESS_TOKEN <- "1595060341146234880-s3E81fGpab6vA3xWJIPhpVAu7DTP8h"

setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)

trendingtweets <- searchTwitter("Seventeen",
                                n = 10000,
                                lang = "en",
                                since = "2022-12-10",
                                until = "2022-12-17",
                                retryOnRateLimit=120)

#list to data frame
seven10DF <- twListToDF(trendingtweets)

#save & load data
save(seven10DF, file = "seven10DF.Rdata")
load(file = "seven10DF.Rdata")

#check missing values
missingval <- sapply(seven10DF, function(x) sum(is.na(x)))
missingval

#subsetting
seventeen <- seven10DF %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == FALSE)
save(seventeen, file = "seventeenDF.Rdata")
load(file = "seventeenDF.Rdata")

#grouping
seventeen %>% 
  group_by(1) %>%
  summarise(max = max(created), min = min(created))

grp1 <- seventeen %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
grp1

seventeen %>% pull(created) %>% min()
seventeen %>% pull(created) %>% max()

#plotting

#ggplot
ggplot(data = seventeen, aes(x = created)) + geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") + xlab("Time") + ylab("Number of Tweets") +
  scale_fill_gradient(low = "green", high = "pink")

#plotly
ggpltly <- grp1 %>%
  dplyr::count(Created_At_Round) %>%
  ggplot(mapping = aes(x = Created_At_Round, y = n)) + theme_light() +
  geom_line() + xlab(label = 'Date') + ylab(label = NULL) +
  ggtitle(label = 'Number of Tweets Per Hour')
gpltly %>% ggplotly()

#rts
svnteen1 <- seven10DF %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == TRUE)

#group2
svnteen1 %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

grp2 <- svnteen1 %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
grp2

svnteen1 %>% pull(created) %>% min()
svnteen1 %>% pull(created) %>% max()

#plotting

#ggplot
ggplot(data = grp2, aes(x = created)) + geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") + xlab("Time") + ylab("Number of Tweets") +
  scale_fill_gradient(low = "pink", high = "maroon")

#plotly
pltly <- grp2 %>%
  dplyr::count(Created_At_Round) %>%
  ggplot(mapping = aes(x = Created_At_Round, y = n)) + theme_light() +
  geom_line() + xlab(label = 'Date') + ylab(label = NULL) +
  ggtitle(label = 'Number of Tweets Per Hour')
pltly %>% ggplotly()
