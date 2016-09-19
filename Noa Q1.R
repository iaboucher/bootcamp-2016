data(ChickWeight)
head(ChickWeight)
unique(ChickWeight$Diet)

str(ChickWeight)
diet1=ChickWeight[ChickWeight$Diet==1 & ChickWeight$Time==0,] #isolating chicks on diet 1 @ time 0
str(diet1) #looks at summary of structure of the data
View(diet1) #opens new tab in R studio to view that data in scrollable format
diet2=ChickWeight[ChickWeight$Diet==2 & ChickWeight$Time==0,]
diet3=ChickWeight[ChickWeight$Diet==3 & ChickWeight$Time==0,]
diet4=ChickWeight[ChickWeight$Diet==4 & ChickWeight$Time==0,]
View(diet4)
quartz()
par(mar=c(4,4,3,2))
boxplot(diet1$weight,diet2$weight,diet3$weight,diet4$weight,names=c("diet1","diet2","diet3","diet4"),
        ylab="weight",col=c("aliceblue","antiquewhite1","plum","cyan2"),las=1,cex.axis=1.5,
        cex.lab=1.5,main="Day 0")
anova1 = aov(weight ~ Diet, data = ChickWeight)
summary(anova1)
TukeyHSD(anova1)
