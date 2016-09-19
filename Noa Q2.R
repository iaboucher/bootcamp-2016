data(ChickWeight)
diet1=ChickWeight[ChickWeight$Diet==1 & ChickWeight$Time==21,]
diet2=ChickWeight[ChickWeight$Diet==2 & ChickWeight$Time==21,]
diet3=ChickWeight[ChickWeight$Diet==3 & ChickWeight$Time==21,]
diet4=ChickWeight[ChickWeight$Diet==4 & ChickWeight$Time==21,]
quartz()
par(mar=c(4,4,3,2))
boxplot(diet1$weight,diet2$weight,diet3$weight,diet4$weight,names=c("diet1","diet2","diet3","diet4"),
        ylab="weight",col=c("aliceblue","antiquewhite1","plum","cyan2"),las=1,cex.axis=1.5,
        cex.lab=1.5,main="Day 21")
anova1 = aov(weight ~ Diet, data = ChickWeight)
summary(anova1)
TukeyHSD(anova1)