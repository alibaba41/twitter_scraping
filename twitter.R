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
consumerKey <- "pXo7reztl3lrUquJC3euhYEsN"
consumerSecret <- "oRPXDeq4nHBBdktuPe62YTD9iCT3azHJ784P7PJhEGDSu6DBQz"
my_oauth <- OAuthFactory$new(consumerKey=consumerKey,consumerSecret=consumerSecret, requestURL=requestURL,accessURL=accessURL, authURL=authURL)

my_oauth$handshake(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl"))

8708138


library(twitteR)
getwd()
save(my_oauth, file="oauth_token.Rdata")

accessToken = '735460846499954689-2nguFBBj232oQGH6nrZrYmUjpE2JnAQ'
accessSecret = 'B1pvTfsJcJYI95ArIpRLfC4ahu2SPhklfhUwkcKZlfj8y'
#searchTwitter('obama', n=1)
setup_twitter_oauth(consumer_key=consumerKey, consumer_secret=consumerSecret,access_token=accessToken, access_secret=accessSecret)


1##getting user information

#user<-getUser('barackobama')
#View(user$toDataFrame())

#neeraj<-getUser('NeerajSarvan')
#View(neeraj$toDataFrame())

## searching for tweets by keywords


tweets_new_1<-searchTwitter("machine learning",n=5000,maxID = '733277369327292416')
# creating dataframe of tweets
tweets_new <- rbind(tweets_new,twListToDF(tweets_new_1))

#writing tweets in a csv 

write.csv(tweets_new,"tweets_machine_learning.csv")

