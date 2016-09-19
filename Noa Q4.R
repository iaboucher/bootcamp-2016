quartz()
diet1=ChickWeight[ChickWeight$Diet==1,]
diet2=ChickWeight[ChickWeight$Diet==2,]
diet3=ChickWeight[ChickWeight$Diet==3,]
diet4=ChickWeight[ChickWeight$Diet==4,]

diet1lm=lm(diet1$weight~diet1$Time)
diet2lm=lm(diet2$weight~diet2$Time)
diet3lm=lm(diet3$weight~diet3$Time)
diet4lm=lm(diet4$weight~diet4$Time)

plot(ChickWeight$weight ~ ChickWeight$Time, col=ChickWeight$Diet, pch=16, main="Effects of Diet on Chick Growth")
abline(diet1lm,col=1)

abline(diet2lm,col=2)
abline(diet3lm,col=3)
abline(diet4lm,col=4)

legend("topleft", legend=unique(ChickWeight$Diet),pch=16,col=c(1,2,3,4),title="Diets")
