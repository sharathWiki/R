# n=12 x=7,8,9 p =1/6

ans=dbinom(7,12,1/6)+dbinom(8,12,1/6)+dbinom(9,12,1/6)
ans

ans2=pbinom(9,12,1/6)-pbinom(6,12,1/6)
ans2


diff(pbinom(c(6,9),12,1/6))


pnorm(84,72,15.2,lower.tail = FALSE)

dpois(0,5)

ans3=ppois(50,50)-ppois(47,50)
ans3

diff(ppois(c(47,50),50))


#x n m m k

dhyper(3,17,233,5)

x=seq(0,31)
print(x)

pmf=dbinom(x,31,0.447)
cdf=pbinom(x,31,0.447)
plot(x,pmf,type="h")

plot(x,cdf)
mean=31*0.447
vari=31*0.447*(1-0.447)
std=sqrt(vari)



print(paste("The mean is ", mean, "The Variance is ", vari, " The Standard Deviation is ", std))

