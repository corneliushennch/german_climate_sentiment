# Header start ================================================================
# 01_collect_corpus.R
#
# Author: Hennch Cornelius (cornelius.hennch@charite.de)
#
# Description: Connect to Twitter API and collect tweets for the corpus
#
# Input: Twitter access tokens
# Output: tweets corpus database
#
# Code written according to Hadley Wickhams "tidyverse style guide"

# Packages & dependencies ----------------------------------------------------

devtools::install_github("ropensci/rtweet")
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

df <- search_tweets("#ahrtal", n = 10000, include_rts = FALSE)



