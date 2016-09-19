data <- ChickWeight
data <- within,{
  Chick<-factor(Chick)
  Diet<-factor(Diet)
  Time<-factor(Time)
})
summary(aov(weight~Diet+Time+Error(Chick), data=data))