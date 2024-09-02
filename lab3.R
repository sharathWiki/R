# binom(x,n,p)
# norm(x,mean,sd)
# pois(x,lambda)

#IF exactly at one point , then we use d , otherwise we use p
# by default p<=x 
# if lower.tail=FALSE then it becomes p>=x


#1)
a=dbinom(7,12,1/6)+dbinom(8,12,1/6)+dbinom(9,12,1/6);
b=pbinom(9,12,1/6)-pbinom(6,12,1/6);
# clean syntax using diff
diff(pbinom(c(6,9),12,1/6))

print(paste("a",a,"b",b))


#2) 
c=pnorm(84,72,15.2,lower.tail=FALSE)
d=pnorm(100,72,15.2)-pnorm(84,72,15.2)
e=1-pnorm(84,72,15.2)

print(paste("c",c,"d",d,"e",e))

#3) 
#no car arrives 
f=dpois(0,5)
g=ppois(50,50)-ppois(47,50)

print(paste("f",f,"g",g))

#using diff
diff(ppois(c(47,50),50))

#4)
#exactly 3 defective pieces
# hyper(x,n,m,k)
#n+m = total population 
#here 250 = n+m 
#x jo pucha hai 
#n=17 (defective pieces)
#m=250-17
#k=5(sample)


dhyper(3,17,233,5)
dbinom(3,5,17/250)

#5)

#44.7% use wikipedia in atleast one of their term papers 
#x= number of students 
#random sample size =31 

x=seq(0,31)
cdf= pbinom(x,31,0.447)
pnf= dbinom(x,31,0.447)
plot(x,pnf)

#IN BINOMIAL DISTRIBUTION MEAN = N*P | VARIANCE = N*P*Q | SD = sqrt(VAR)

mean = 31*0.447
variance = 31*0.447*(1-0.447)
sd = sqrt(variance)


print(paste("mean",mean,"var",variance,"sd",sd))
