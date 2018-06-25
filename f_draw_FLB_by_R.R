window_width = 0.05
market_type = 'soccer_draw'
wd <- format(window_width, digits=2)
dir_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/',
                 market_type,
                 '_',
                 wd,
                 '_.csv',
                 sep = "", collapse = NULL)
flb<-read.csv(dir_str,sep=',',header=TRUE)
loessMod25 <- loess(perc_winner ~ price, data=flb, span=0.25) # 25% smoothing span
# get smoothed output
smoothed25 <- predict(loessMod25) 


# Plot it
plot(flb$perc_winner, 
     x=flb$price,
     type="p", pch=4,
     main="FLB Loess Smoothing and Prediction", 
     xlab="Price", 
     ylab="Percentage of winners",
     xlim=c(0, 1), ylim=c(0, 1))
lines(smoothed25, 
      x=flb$price,lwd=2)
d<-(0:1)
lines(d,x=d,lty=2)

  legend("topleft", inset=.05,lwd=c(NA,2,1),lty = c(-1, 1, 2), pch = c(4, NA, NA),
       c("obverses","smoothed25","diagonal"))
