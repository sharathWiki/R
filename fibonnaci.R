n=as.integer(readline(prompt = "Enter fibonacci limit"))

fibo=function(n){
n1=0
n2=1
sum=0
for(i in 1:n){
  print(n1)
  sum=n1+n2
  n1=n2
  n2=sum
}
}

fibo(n)


x=mtcars

y=x[,3]
z=x[,4]

summary(x)
var(y)

sd(y)


cov(y,z)

sort(y)

sort(table(y))

barplot(y)

pie(y)

hist(y,col="green")