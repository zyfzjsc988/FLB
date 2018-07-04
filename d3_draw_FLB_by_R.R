window_width = 0.05
par(mfrow=c(2,3),cex=0.8,family='sans',mar=c(2,2,1,1),oma = c(2, 2, 0, 2))
zero_to_one =seq(from=0,to=1,by=0.01)

# baseball
market_type = 'baseball'
wd <- format(window_width, digits=2)
dir_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/',
                 market_type,
                 #'_',
                 #wd,
                 #'_.csv',
                 '_fixed.csv',
                 sep = "", collapse = NULL)
flb<-read.csv(dir_str,sep=',',header=TRUE)
loessMod25 <- loess(perc_winner ~ price, data=flb, span=0.5,degree = 2) # 25% smoothing span
# get smoothed output
smoothed25 <- predict(loessMod25) 

# Plot it
plot(flb$perc_winner, 
     x=flb$price,
     type="n", pch=20,
     xlab="",
     ylab="",
     # xlab="Price", 
     # ylab="Percentage of winners",
     width=1,height=1,
     xlim=c(0, 1), ylim=c(0, 1))
title("BASEBALL",line = -1.15,adj = 0.1)
lines(smoothed25, 
      x=flb$price,lwd=2)

smoothed = predict(loessMod25,zero_to_one) 
checked_flb = data.frame("price"=zero_to_one,"perc"=smoothed)
write_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/',
                 market_type,
                 '_fixed_checked.csv',
                 sep = "", collapse = NULL)
write.csv(x=checked_flb,file = write_str)
d<-(0:1)
lines(d,x=d,lty=2)

# legend("topleft", inset=.05,lwd=c(NA,2,1),lty = c(-1, 1, 2), pch = c(4, NA, NA),
#        c("obverses","smoothed25","diagonal"))



# Soccer
market_type = 'soccer'
wd <- format(window_width, digits=2)
dir_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/',
                 market_type,
                 #'_',
                 #wd,
                 #'_.csv',
                 '_fixed.csv',
                 sep = "", collapse = NULL)
flb<-read.csv(dir_str,sep=',',header=TRUE)
loessMod25 <- loess(perc_winner ~ price, data=flb, span=0.5) # 25% smoothing span
# get smoothed output
smoothed25 <- predict(loessMod25) 
# Plot it
plot(flb$perc_winner, 
     x=flb$price,
     type="n", pch=20,
     xlab="",
     ylab="",
     # xlab="Price", 
     # ylab="Percentage of winners",
     width=1,height=1,
     xlim=c(0, 1), ylim=c(0, 1))
title("SOCCER",line = -1.15,adj = 0.1)
lines(smoothed25, 
      x=flb$price,lwd=2)
smoothed = predict(loessMod25,zero_to_one) 
checked_flb = data.frame("price"=zero_to_one,"perc"=smoothed)
write_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/',
                   market_type,
                   '_fixed_checked.csv',
                   sep = "", collapse = NULL)
write.csv(x=checked_flb,file = write_str)
d<-(0:1)
lines(d,x=d,lty=2)


# iceball
market_type = 'iceball'
wd <- format(window_width, digits=2)
dir_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/',
                 market_type,
                 #'_',
                 #wd,
                 #'_.csv',
                 '_fixed.csv',
                 sep = "", collapse = NULL)
flb<-read.csv(dir_str,sep=',',header=TRUE)
loessMod25 <- loess(perc_winner ~ price, data=flb, span=0.5,degree = 2) # 25% smoothing span
# get smoothed output
smoothed25 <- predict(loessMod25) 
# Plot it
plot(flb$perc_winner, 
     x=flb$price,
     type="n", pch=20,
     xlab="",
     ylab="",
     # xlab="Price", 
     # ylab="Percentage of winners",
     width=1,height=1,
     xlim=c(0, 1), ylim=c(0, 1))
title("ICE HOCKEY",line = -1.15,adj = 0.1)
lines(smoothed25, 
      x=flb$price,lwd=2)
smoothed = predict(loessMod25,zero_to_one) 
checked_flb = data.frame("price"=zero_to_one,"perc"=smoothed)
write_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/',
                   market_type,
                   '_fixed_checked.csv',
                   sep = "", collapse = NULL)
write.csv(x=checked_flb,file = write_str)
d<-(0:1)
lines(d,x=d,lty=2)
lines(smoothed,x=checked_flb)

# soccer_home
market_type = 'soccer_home'
wd <- format(window_width, digits=2)
dir_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/',
                 market_type,
                 #'_',
                 #wd,
                 #'_.csv',
                 '_fixed.csv',
                 sep = "", collapse = NULL)
flb<-read.csv(dir_str,sep=',',header=TRUE)
loessMod25 <- loess(perc_winner ~ price, data=flb, span=0.5,degree = 2) # 25% smoothing span
# get smoothed output
smoothed25 <- predict(loessMod25) 
# Plot it
plot(flb$perc_winner, 
     x=flb$price,
     type="n", pch=20,
     xlab="",
     ylab="",
     # xlab="Price", 
     # ylab="Percentage of winners",
     width=1,height=1,
     xlim=c(0, 1), ylim=c(0, 1))
title("SOCCER(HOME)",line = -1.15,adj = 0.1)
lines(smoothed25, 
      x=flb$price,lwd=2)
smoothed = predict(loessMod25,zero_to_one) 
checked_flb = data.frame("price"=zero_to_one,"perc"=smoothed)
write_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/',
                   market_type,
                   '_fixed_checked.csv',
                   sep = "", collapse = NULL)
write.csv(x=checked_flb,file = write_str)
d<-(0:1)
lines(d,x=d,lty=2)


# soccer_away
market_type = 'soccer_away'
wd <- format(window_width, digits=2)
dir_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/',
                 market_type,
                 #'_',
                 #wd,
                 #'_.csv',
                 '_fixed.csv',
                 sep = "", collapse = NULL)
flb<-read.csv(dir_str,sep=',',header=TRUE)
loessMod25 <- loess(perc_winner ~ price, data=flb, span=0.5) # 25% smoothing span
# get smoothed output
smoothed25 <- predict(loessMod25) 
# Plot it
plot(flb$perc_winner, 
     x=flb$price,
     type="n", pch=20,
     xlab="",
     ylab="",
     # xlab="Price", 
     # ylab="Percentage of winners",
     width=1,height=1,
     xlim=c(0, 1), ylim=c(0, 1))
title("SOCCER(AWAY)",line = -1.15,adj = 0.1)
lines(smoothed25, 
      x=flb$price,lwd=2)
smoothed = predict(loessMod25,zero_to_one) 
checked_flb = data.frame("price"=zero_to_one,"perc"=smoothed)
write_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/',
                   market_type,
                   '_fixed_checked.csv',
                   sep = "", collapse = NULL)
write.csv(x=checked_flb,file = write_str)
d<-(0:1)
lines(d,x=d,lty=2)




# soccer_draw
market_type = 'soccer_draw'
wd <- format(window_width, digits=2)
dir_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/',
                 market_type,
                 #'_',
                 #wd,
                 #'_.csv',
                 '_fixed.csv',
                 sep = "", collapse = NULL)
flb<-read.csv(dir_str,sep=',',header=TRUE)
loessMod25 <- loess(perc_winner ~ price, data=flb, span=0.5) # 25% smoothing span
# get smoothed output
smoothed25 <- predict(loessMod25) 
# Plot it
plot(flb$perc_winner, 
     x=flb$price,
     type="n", pch=20,
     xlab="",
     ylab="",
     # xlab="Price", 
     # ylab="Percentage of winners",
     width=1,height=1,
     xlim=c(0, 1), ylim=c(0, 1))
title("SOCCER(DRAW)",line = -1.15,adj = 0.1)
lines(smoothed25, 
      x=flb$price,lwd=2)
smoothed = predict(loessMod25,zero_to_one) 
checked_flb = data.frame("price"=zero_to_one,"perc"=smoothed)
write_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/',
                   market_type,
                   '_fixed_checked.csv',
                   sep = "", collapse = NULL)
write.csv(x=checked_flb,file = write_str)
d<-(0:1)
lines(d,x=d,lty=2)

mtext('Odds Price', side = 1, outer = TRUE, line = 0.5,cex=1)
mtext('Percentage of Winners', side = 2, outer = TRUE, line = 0.5,cex=1)
