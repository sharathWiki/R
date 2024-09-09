#Experiment-2 

# 20gold,30silver,50bronze
#drawing 10 coins 

#1a)

chest=c(rep("gold",20),rep("silver",30),rep("bronze",50))

sample(chest,10)

#1b)

surgical=c(rep("success",90),rep("failure",10))
sample(surgical,10)

#using prob()
sample(c("succ","fail"),10,replace=T,prob=c(.9,.1))

#2)



#3)

bayes=function(pA,pB,pBA){
  pAB=(pA/pB)*pBA
}

print(bayes(0.2,0.4,0.85))

#4)
#print(iris.head())
#a
head(iris)
#b
str(iris)
#c
summary(iris)
range(iris$Sepal.Length)
#d
mean(iris$Sepal.Length)
#e
median(iris$Sepal.Length)
#f
quantile(iris$Sepal.Length,0.25)
quantile(iris$Sepal.Length,0.75)
IQR(iris$Sepal.Length)
#g
sd(iris$Sepal.Length)
var(iris$Sepal.Length)
#i
summary(iris)

vec=c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
#5)
mode = function (vec){
u=unique(vec)
match(vec,u)
u[which.max(tabulate(match(vec,u)))]
}

mode(vec)

mode2 = function (vec){
u=unique(vec)
match(vec,u)
u[which.max(tabulate(match(vec,u)))]
}

mode2(vec)


vec=c("o","it","the","it","it")

mode(vec)

#  return(names(sort(-table(vec)))[1])

#print(mode(vec))

