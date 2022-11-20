# Header start ================================================================
# 01_collect_corpus.R
#
# Author: Hennch Cornelius (cornelius.hennch@charite.de)
#
# Description: Connect to Twitter API and old tweets of my twitter account 
# before I delete theme
#
# Input: Twitter access tokens
# Output: my older tweets
#
# Code written according to Hadley Wickhams "tidyverse style guide"

# Packages & dependencies ----------------------------------------------------


# devtools::install_github("ropensci/rtweet")
## load rtweet
library(rtweet)

# Header end ===================================================================

## store api keys 
api_key <- "q1iLv2NEpWsV1HJ3ZQtAODhK6"
api_secret_key <- "q1iLv2NEpWsV1HJ3ZQtAODhK6"
access_token <- "372055476-XgAcU52jEWXOGJLKD9FQ6UmbNGwCSS0sLCkIvkVj"
access_secret <- "mV1GxrRma6sdqwKsx2eY1KDdjVKybjEc1cttICGRfpcxv"

auth <- rtweet_app()
auth_setup_default()

my_timeline <- get_my_timeline(n = 3500, retryonratelimit = TRUE)

rt <- search_tweets(
  "from:c_hennch", n = 1000, retryonratelimit = TRUE, type = "mixed"
)

me <- search_users("c_hennch")

my_tweets <- lookup_tweets(statuses = "janboehm", retryonratelimit = TRUE)

ts_plot(head(my_timeline,100), by = "months")

me <- lookup_users("c_hennch")


test <- tweets_data(me)



limits <- rate_limit()

