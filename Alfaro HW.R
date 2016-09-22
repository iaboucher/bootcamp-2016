for (ii in 1:9){
  cat("*")
}# Alfaro exercise 1

for (ii in 1:){
  cat("*","&")
}#Alfaro exercise 2

#Alfaro exercise 3 ...

#Alfaro exercise 4
years <- c( 2015, 2016, 2018, 2020, 2021)
for (ii in 1:length(years)){
  if(years[ii]%%2==0){
    cat(years[ii], "horray, congressional election", sep='\t', fill=T)}
  if(years[ii]%%4==0){
    cat(years[ii],"Hopefully not Trump", sep = '\t',fill=T)
  }}

# Alfaro exercise 5 (i think this is correct)
bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5)
interestRate <- 0.0125
compounded<- rep(bankAccounts)
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }

# Alfaro exercise 6
bankAccounts<-c(10,9.2,5.6) #set initial values
house<-c(4.8,3.8,5.7) #deduct
food<-c(3.5,4.3,5.0) #deduct
fun<-c(7.8,2.1,10.5) #deduct
income <-c(21,21,21) #add incomes
newbalance<-bankAccounts-house-food-fun+income #calculate new balances
compounded1 <- rep(newbalance) #initialize variable compounded1
for (j in 1:5){
  for (i in 1:length(newbalance)) {
  compounded1[i] <- interestRate*newbalance[i] + newbalance[i]; }
  }#add interest

# Alfaro exercise 7
interestRate = 0.0125
bankAccounts = c(10,9.2,5.6) #set initial values
house = c(4.8,3.8,5.7) #deduct
food = c(3.5,4.3,5.0) #deduct
fun = c(7.8,2.1,10.5) #deduct
income = c(21,21,21) #add incomes
years = 2015:2020
trustMoney = 5

for (j in 1:length(years)){
  for (i in 1:length(bankAccounts)) {
      bankAccounts[i] = bankAccounts[i]-house[i]-food[i]-fun[i]+income[i] #calculate new balances
      if (years[j]%%2 == 1 && (i==1 | i==3)){
        bankAccounts[i] = bankAccounts[i] + trustMoney
      }
      bankAccounts[i] = (1+interestRate)*bankAccounts[i]
    }
}

print(bankAccounts)

#Alfaro exercise 8
i=(0)
sumI=(0)
while (i <= 17){
  sumI=sumI+i
  i = i+1
}

print(sumI)

#Alfaro exercise 9
superfunctionyay <- function(num){
  if (num <= -1){print("small")}
  else if (num < 1 ){print("medium")}
  else {print("big")}
  }
