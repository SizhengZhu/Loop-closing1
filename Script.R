setwd("~/test/loop-closing")
library(rmarkdown)
rmarkdown::render("Twitter.Rmd")

install.packages("gmailr")
install.packages("cronR")
library(gmailr)
library(cronR)

gmailr::gmail(
  to="sizhengzhu84@gmail.com", 
  subject = "Schedule Report", 
  password = "zhuzhu123!",
  message = "Attached is the scheduled report.",
  attachment = "Twitter.html",
  username = "sizhengzhu84@gmail.com"
)

