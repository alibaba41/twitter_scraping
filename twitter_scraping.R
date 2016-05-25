install.packages("ROAuth")
install.packages("twitteR")
install.packages("streamR")
install.packages("stringr")
install.packages("tm")
install.packages("RCurl")
install.packages("maps")
install.packages("Rfacebook")
install.packages("topicmodels")
install.packages("devtools")

library(ROAuth)
requestURL <- "https://api.twitter.com/oauth/request_token"
accessURL <- "https://api.twitter.com/oauth/access_token"
authURL <- "https://api.twitter.com/oauth/authorize"
consumerKey <- "#########"
consumerSecret <- "########"
my_oauth <- OAuthFactory$new(consumerKey=consumerKey,
                             consumerSecret=consumerSecret, requestURL=requestURL,
                             accessURL=accessURL, authURL=authURL)
my_oauth$handshake(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl"))
8708138

getwd()
save(my_oauth, file="oauth_token.Rdata")

accessToken = '#################'
accessSecret = '#################3'
#searchTwitter('obama', n=1)


##getting user information

#user<-getUser('barackobama')
#View(user$toDataFrame())

#neeraj<-getUser('NeerajSarvan')
#View(neeraj$toDataFrame())

## searching for tweets by keywords


tweets_new<-searchTwitter("analytics",n=50000,maxID = '735295625365979136')
# creating dataframe of tweets
tweets_new <- twListToDF(tweets_new)

#writing tweets in a csv file

write.csv(tweets_new,"tweets.csv")

