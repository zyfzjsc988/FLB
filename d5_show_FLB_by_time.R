baseball_daily<-read.csv('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/daily_FLB/baseball.csv'
              ,sep=',',header=TRUE)

iceball_daily<-read.csv('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/daily_FLB/iceball.csv'
                         ,sep=',',header=TRUE)

soccer_daily<-read.csv('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/daily_FLB/soccer.csv'
                         ,sep=',',header=TRUE)



baseball_hourly<-read.csv('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/hourly_FLB/baseball.csv'
                         ,sep=',',header=TRUE)

iceball_hourly<-read.csv('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/hourly_FLB/iceball.csv'
                        ,sep=',',header=TRUE)

soccer_hourly<-read.csv('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/hourly_FLB/soccer.csv'
                       ,sep=',',header=TRUE)


# baseball
par(mfrow=c(1,2),cex=0.8,family='sans',mar=c(2,2,3,2),oma = c(2, 2, 2, 2))
# Plot daily
plot(baseball_daily$FLB, 
     x=baseball_daily$day2end,
     type="o", pch=20,
     #xlab="",
     ylab="",
     xlab="Day", 
     #ylab="Percentage of winners",
     width=1,height=1,
     xlim=c(0, 3), ylim=c(0, 1))
title("Daily",line = -1.15,adj = 0.1)

# Plot hourly
plot(baseball_hourly$FLB, 
     x=baseball_hourly$hour2end,
     type="o", pch=20,
     #xlab="",
     ylab="",
     xlab="Hour", 
     #ylab="Percentage of winners",
     width=1,height=1,
     xlim=c(0, 34), ylim=c(0, 1))

title("Hourly",line = -1.15,adj = 0.1,cex=1)

mtext('Duration to market closing', side = 1, outer = TRUE, line = 0.5,cex=1)
mtext('The normalized favourite-longshot bias', side = 2, outer = TRUE, line = 0.5,cex=1)

mtext('BASEBALL', side = 3, outer = TRUE, line = -1.5 ,cex=1.5)


# iceball
par(mfrow=c(1,2),cex=0.8,family='sans',mar=c(2,2,3,2),oma = c(2, 2, 2, 2))
# Plot daily
plot(iceball_daily$FLB, 
     x=iceball_daily$day2end,
     type="o", pch=20,
     #xlab="",
     ylab="",
     xlab="Day", 
     #ylab="Percentage of winners",
     width=1,height=1,
     xlim=c(0, 4), ylim=c(0, 1))
title("Daily",line = -1.15,adj = 0.1)

# Plot hourly
plot(iceball_hourly$FLB, 
     x=iceball_hourly$hour2end,
     type="o", pch=20,
     #xlab="",
     ylab="",
     xlab="Hour", 
     #ylab="Percentage of winners",
     width=1,height=1,
     xlim=c(0, 49), ylim=c(0, 1))

title("Hourly",line = -1.15,adj = 0.1,cex=1)

mtext('Duration to market closing', side = 1, outer = TRUE, line = 0.5,cex=1)
mtext('The normalized favourite-longshot bias', side = 2, outer = TRUE, line = 0.5,cex=1)

mtext('ICE HOCKEY', side = 3, outer = TRUE, line = -1.5 ,cex=1.5)


# soccer
par(mfrow=c(1,2),cex=0.8,family='sans',mar=c(2,2,3,2),oma = c(2, 2, 2, 2))
# Plot daily
plot(soccer_daily$FLB, 
     x=soccer_daily$day2end,
     type="o", pch=20,
     #xlab="",
     ylab="",
     xlab="Day", 
     #ylab="Percentage of winners",
     width=1,height=1,
     xlim=c(0, 21), ylim=c(0, 1))
title("Daily",line = -1.15,adj = 0.1)

# Plot hourly
plot(soccer_hourly$FLB, 
     x=soccer_hourly$hour2end,
     type="o", pch=20,
     #xlab="",
     ylab="",
     xlab="Hour", 
     #ylab="Percentage of winners",
     width=1,height=1,
     xlim=c(0, 152), ylim=c(0, 1))

title("Hourly",line = -1.15,adj = 0.1,cex=1)

mtext('Duration to market closing', side = 1, outer = TRUE, line = 0.5,cex=1)
mtext('The normalized favourite-longshot bias', side = 2, outer = TRUE, line = 0.5,cex=1)

mtext('SOCCER', side = 3, outer = TRUE, line = -1.5 ,cex=1.5)

