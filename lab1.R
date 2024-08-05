  v = c(2,5,10,23,20)
  t=c(10,20,30,40,50)
  min(v)
  sum(v)
  print(v+t)
  
  x=mtcars
  
  y=x[,3]
  y
  
  z=x[,4]
  z
  
  summary(x)
  
  var(y)
  
  sd(y)
  
  
  cov(y,z)
  
  sort(y)
  
  sort(table(y))
  
  
  
  barplot(y)
  
  pie(y)
  
  boxplot(y)
  
  
  hist(y,col = "green")
  
  i=iris
  i
  
  a=i[,1]
  b=i[,2]
  a
  b
  
  
  summary(i)
  
  var(a)
  
  sd(a)
  
  
  cov(a,b)
  
  sort(a)
  
  sort(table(a))
  
  mean(a)
  median(a)
  mode(a)
  min(a)
  max(a)
  
  
  
  plot(a)
  boxplot(a)
  pie(a)
  barplot(a)
  
  s=seq(0,10,1)
  s
  m=2
  
  f=function(s,m)
  {
    f=s^m
  }
  plot(s,f(s,m), xlab="x-axis" , ylab="y-axis", col="red", main = "first lab" ,typ = 'l')
  
  d=seq(-10,10,1)
  
  n=4
  
  cube=function(d,n)
  {
    cube=d^n
  }
  
  plot(d,cube(d,2), xlab="x-axis" , ylab="y-axis", col="red", main = "first lab" ,typ = 'l')
  lines(d,cube(d,3) , col= "blue")
  lines(d,cube(d,4), col="green")
  
  legend=("topright",legend=c("red n=2", "blue n=3", "green n=4"))
