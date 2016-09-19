data(ChickWeight)
str(ChickWeight)
View(ChickWeight)
max(ChickWeight$Chick)
split(ChickWeight, ChickWeight$Chick)
plot(NA, xlim=c(0,21),ylim=c(0,400))
rain<-rainbow(50)
for (ii in split(ChickWeight, ChickWeight$Chick)){
  lines(ii$Time, ii$weight, col=rain[ii$Chick])
}
rain<-rainbow(50)
for (ii in 1:length(unique(ChickWeight$Chick))){
  current_chick <- subset(ChickWeight,Chick==ii)
  lines(current_chick$weight~current_chick$Time, col=rain[ii])
}
  