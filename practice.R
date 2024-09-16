# # # # # # # vec = c(5, 10, 15, 20, 25, 30)
# # # # # # # print(min(vec))
# # # # # # # print(max(vec))

# # # # # # # num = 5
# # # # # # # # as.integer(readline("ENTER AN INTEGER: "))
# # # # # # # # print(num)
# # # # # # # len=10

# # # # # # # x=c(20,102,123,123,123,12,312,3,132,4233,42,343)
# # # # # # # mi=min(x)
# # # # # # # ma=max(x)

# # # # # # # print(paste("the min is: ",mi ,"and the max is :", ma))

# # # # # # # #factorial code 

# # # # # # # n=as.integer(readline(prompt="Enter a value : "))

# # # # # # # facto=function(n){
# # # # # # # fact=1
# # # # # # #   if(n==0){

# # # # # # #   return(1)
# # # # # # #   }
# # # # # # #   else{
# # # # # # #     for(i in 1:n){
# # # # # # #       fact=fact*i
# # # # # # #     }
# # # # # # #   return(fact)
# # # # # # #   }
# # # # # # # }

# # # # # # # print(facto(n))


# # # # # # # vec=c(5,10,15,20,25,30)
# # # # # # # min(vec)
# # # # # # # max(vec)

# # # # # # # n=as.integer(readline(prompt = "Enter a number: "))

# # # # # # # facto = function(n){
# # # # # # #   fact=1
# # # # # # #   if(n==0) return(1)
# # # # # # #   else{
# # # # # # #     for(i in 1:n){
# # # # # # #       fact=fact*i
# # # # # # #     }
# # # # # # #     return(fact)
# # # # # # #   }
# # # # # # # }

# # # # # # # facto(n)

# # # # # # #graph plot with colors 
# # # # # # #ppois dpois
# # # # # # #integrate - expected value - mean , variance 
# # # # # # #fibonnaci 

# # # # # # # x=mtcars
# # # # # # # y=x[,3]
# # # # # # # z=x[,4]

# # # # # # # # # barplot(y,col="red",type="s")
# # # # # # # # plot(y,t="l")
# # # # # # # # help(plot)

# # # # # # # # p l b c o s S h n 

# # # # # # # hist(y)


# # # # # # # plot(data,type="o",col="blue",xlab="Index",ylab="value",main="Line plot")

# # # # # # # pie(data,labels = c("A","B","C","D","E"))

# # # # # # barplot(data,col="green",names.arg=c("A","B","C","D","E") ,xlab="Category", ylab="Value", main='Bar plot')

# # # # # # help(barplot)


# # # # # # data(iris)
# # # # # # print(iris)
# # # # # head(iris)

# # # # # str(iris)

# # # # # range(iris$Sepal.Length)
# # # # # mean(iris$Sepal.Length)

# # # # # median(iris$Sepal.Length)

# # # # # quartiles=quantile(iris$Sepal.Length,probs=c(0.25,0.75))
# # # # # diff(quartiles)


# # # # # IQR(iris$Sepal.Length)

# # # # # sd(iris$Sepal.Length)
# # # # # # sqrt(var(iris$Sepal.Length))
# # # # # var(iris$Sepal.Length)

# # # # # summary(iris)


# # # # # mode

# # # # mode = function (vec){
# # # # u=unique(vec)
# # # # match(vec,u)
# # # # u[which.max(tabulate(match(vec,u)))]
# # # # }


# # # c_mode= function(vec){
# # #   u=unique(vec)
# # #   # match(vec,u)
# # #   u[which.max(tabulate(match(vec,u)))]
# # # }

# # # c_mode(data)



# # # c_mode=function(vec){
# # #   u=unique(vec)
# # # u[which.max(tabulate(match(vec,u)))]
# # # }

# # # # help(tabulate)

# # # data=c(10,20,30,40,50,50,30,20,102,102,1231,31,2432,421,01,1,10,10,1101010,10,10)

# # # custom_mode = function(vec){
# # #   u=unique(vec)
# # #   u[which.max(tabulate(match(u,vec)))]
# # # }

# # # custom_mode(data)


# # c_mode=function(vec){
# #   u=unique(vec)
# #   u[which.max(tabulate(match(vec,u)))]
# # }


# # 20 gold 30 silver 50 bronze 10 coins randomly 

# chest=c(rep("gold,20"),rep("silver",30),rep("bronze",10))
# sample(chest,2)

 
# surg=c(rep("Success",90),rep("Failure",10))
# sample(surg,10)


# sample(c("succ","fail"),10,replace=T,prob=c(0.9,0.1))



simulate_birthday_prob= function(n,N=100000){
  count=0
for(i in 1:n){
  birthdays=sample(1:365,n,replace = TRUE)
  if(any(duplicated(birthdays))){
    count=count+1
  }
}
return(count/N)
}

#   probabili=sapply(1:30,simulate_birthday_prob)

# print(probabili)


# help(sample)



# simulate_birthday_prob=function(n,N=10000){
#   count=0
#   for(i in 1:N){
#     birthdays=sample(1:365,n,replace = TRUE)
#     if(any(duplicated(birthdays)))
#     count=count=1
#   }
#   return(count/N)
# }

m=1
prob=0
while(prob<=0.5){
m=m+1
prob=simulate_birthday_prob(m,N=100000)
}

print(paste("The smallest value for which probability of match is greater than .5 is ", m))
