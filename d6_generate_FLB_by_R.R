zero_to_one =seq(from=0,to=1,by=0.01)
db<-data.frame(0,0,0)
names(db)<-c("X","price","perc_winner")
da<-data.frame(1,1,1)
names(da)<-c("X","price","perc_winner")

# ======================
# daily
# ======================
# baseball
market_type = 'baseball'
for(wd in 0:3){
dir_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/daily_FLB/',
                 market_type,
                 '/day_',
                 wd,
                 '.csv',
                 sep = "", collapse = NULL)
flb<-read.csv(dir_str,sep=',',header=TRUE)
if(flb$price[1]!=0){flb <- rbind(db, flb)}
if(flb$price[length(flb$price)]!=1){flb <- rbind(flb,da)}

loessMod25 <- loess(perc_winner ~ price, data=flb, span=0.5,degree = 2) # 25% smoothing span
smoothed = predict(loessMod25,zero_to_one) 

checked_flb = data.frame("price"=zero_to_one,"perc"=smoothed)
write_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/daily_FLB/',
                   market_type,
                   '_checked/day_',
                   wd,
                   '.csv',
                   sep = "", collapse = NULL)
write.csv(x=checked_flb,file = write_str)
}




# iceball
market_type = 'iceball'
for(wd in 0:4){
  dir_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/daily_FLB/',
                   market_type,
                   '/day_',
                   wd,
                   '.csv',
                   sep = "", collapse = NULL)
  flb<-read.csv(dir_str,sep=',',header=TRUE)
  if(flb$price[1]!=0){flb <- rbind(db, flb)}
  if(flb$price[length(flb$price)]!=1){flb <- rbind(flb,da)}
  
  loessMod25 <- loess(perc_winner ~ price, data=flb, span=0.5,degree = 2) # 25% smoothing span
  smoothed = predict(loessMod25,zero_to_one) 
  
  checked_flb = data.frame("price"=zero_to_one,"perc"=smoothed)
  write_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/daily_FLB/',
                     market_type,
                     '_checked/day_',
                     wd,
                     '.csv',
                     sep = "", collapse = NULL)
  write.csv(x=checked_flb,file = write_str)
}


# soccer
market_type = 'soccer'
for(wd in 0:21){
  dir_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/daily_FLB/',
                   market_type,
                   '/day_',
                   wd,
                   '.csv',
                   sep = "", collapse = NULL)
  flb<-read.csv(dir_str,sep=',',header=TRUE)
  if(flb$price[1]!=0){flb <- rbind(db, flb)}
  if(flb$price[length(flb$price)]!=1){flb <- rbind(flb,da)}
  
  loessMod25 <- loess(perc_winner ~ price, data=flb, span=0.5,degree = 2) # 25% smoothing span
  smoothed = predict(loessMod25,zero_to_one) 
  
  checked_flb = data.frame("price"=zero_to_one,"perc"=smoothed)
  write_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/daily_FLB/',
                     market_type,
                     '_checked/day_',
                     wd,
                     '.csv',
                     sep = "", collapse = NULL)
  write.csv(x=checked_flb,file = write_str)
}



# ================
# hourly
# ================

# baseball
market_type = 'baseball'
for(wd in 0:34){
  dir_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/hourly_FLB/',
                   market_type,
                   '/hour_',
                   wd,
                   '.csv',
                   sep = "", collapse = NULL)
  flb<-read.csv(dir_str,sep=',',header=TRUE)
  if(flb$price[1]!=0){flb <- rbind(db, flb)}
  if(flb$price[length(flb$price)]!=1){flb <- rbind(flb,da)}
  
  loessMod25 <- loess(perc_winner ~ price, data=flb, span=0.5,degree = 2) # 25% smoothing span
  smoothed = predict(loessMod25,zero_to_one) 
  
  checked_flb = data.frame("price"=zero_to_one,"perc"=smoothed)
  write_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/hourly_FLB/',
                     market_type,
                     '_checked/hour_',
                     wd,
                     '.csv',
                     sep = "", collapse = NULL)
  write.csv(x=checked_flb,file = write_str)
}


# iceball
market_type = 'iceball'
for(wd in 0:49){
  dir_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/hourly_FLB/',
                   market_type,
                   '/hour_',
                   wd,
                   '.csv',
                   sep = "", collapse = NULL)
  flb<-read.csv(dir_str,sep=',',header=TRUE)
  if(flb$price[1]!=0){flb <- rbind(db, flb)}
  if(flb$price[length(flb$price)]!=1){flb <- rbind(flb,da)}
  
  loessMod25 <- loess(perc_winner ~ price, data=flb, span=0.5,degree = 2) # 25% smoothing span
  smoothed = predict(loessMod25,zero_to_one) 
  
  checked_flb = data.frame("price"=zero_to_one,"perc"=smoothed)
  write_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/hourly_FLB/',
                     market_type,
                     '_checked/hour_',
                     wd,
                     '.csv',
                     sep = "", collapse = NULL)
  write.csv(x=checked_flb,file = write_str)
}

# soccer
market_type = 'soccer'
for(wd in 0:152){
  dir_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/hourly_FLB/',
                   market_type,
                   '/hour_',
                   wd,
                   '.csv',
                   sep = "", collapse = NULL)
  flb<-read.csv(dir_str,sep=',',header=TRUE)
  if(flb$price[1]!=0){flb <- rbind(db, flb)}
  if(flb$price[length(flb$price)]!=1){flb <- rbind(flb,da)}
  
  loessMod25 <- loess(perc_winner ~ price, data=flb, span=0.5,degree = 2) # 25% smoothing span
  smoothed = predict(loessMod25,zero_to_one) 
  
  checked_flb = data.frame("price"=zero_to_one,"perc"=smoothed)
  write_str <- paste('../OneDrive/DataScience_Homework/DISERTATION/datasets/FLB/hourly_FLB/',
                     market_type,
                     '_checked/hour_',
                     wd,
                     '.csv',
                     sep = "", collapse = NULL)
  write.csv(x=checked_flb,file = write_str)
}
