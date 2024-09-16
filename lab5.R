# x=c(0,1,2,3,4)
# px=c(0.41,0.37,0.16,0.05,0.01)


# sum(x*px)

# weighted.mean(x,px)

# c(x %*% px)

# completion = function(x){
#   (0.1*exp(-0.1*x))*x
# }

# res=integrate(completion,lower = 0,upper = Inf)
# res

# x=0,1,2

x=c(0,1,2,3)
px=c(0.1,0.2,0.2,0.5)

xf=function(t){
  cost=3*6

  sell=t*12

  ret=(3-t)*2

  return(sell+ret-cost)
}

s=sapply(x,xf)
res=sum(s*px)
res


airquality

tail(airquality,15)

head(airquality,2)

sample_birthday= function(n,N=10000){
  count=1
  for(i in 1:N){
    birthdays=sample(1:365,n,replace=TRUE)
  if(any(duplicated(birthdays))>0){
    count=count+1
  }
  }
  return (count/N)
}

probabilities=sapply(1:30,sample_birthday)
probabilities

m=0
prob=0.5
while(prob<=0.5){
  m=m+1
  prob=sample_birthday(m)
}

print(m)