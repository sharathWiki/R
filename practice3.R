# # # # x=c(0,1,2,3,4)
# # # # px=c(0.41,0.37,0.16,0.05,0.01)

# # # # sum(x*px)

# # # # weighted.mean(x,px)

# # # # c(x %*% px)

# # # m1=function(t){
# # #   ft=(0.1*exp(-0.1*t))*t
# # # }
# # # m2=function(t){
# # #   ft=(0.1*exp(-0.1*t))*t*t
# # # }
# # # m3=function(t){
# # #   ft=(0.1*exp(-0.1*t))*t*t*t
# # # }

# # # integrate(m1,lower=0, upper=Inf)

# # # # variance= integrate(m2(),lower=0, upper=Inf)- (integrate(m1,lower=0, upper=Inf))^2


# # x=c(0,1,2,3)
# # px=c(0.1,0.2,0.2,0.5)
# # bookstore=function(x){
# #   cost=6*3

# #   sell=12*x

# #   unsold=2*(3-x)

# #   return(sell+unsold-cost)
# # }

# # s=sapply(x,bookstore)
# # sum(s*px)



# pdf=function(x){
#   ifelse(x>1 & x<10,0.5*exp(-x),0)
# }

# m1=function(t){
#   ft=pdf(t)*t
# }
# m2=function(t){
#   ft=pdf(t)*t^2
# }
# m3=function(t){
#   ft=pdf(t)*t^3
# }


# fm=integrate(m1,lower=1,upper=10)$value
# fm
# sm=integrate(m2,lower=1,upper=10)$value
# sm

# vari=sm-fm^2
# vari

pmfx=function(x){
  (3/4)*(1/4)^(x-1)
}

pmfy=function(y){
  x=sqrt(y)
   if (x %% 1 == 0 && x >= 1) pmfx(x) else 0
}

# y for x =3, expected value and variance of y for x =1,2,3,4,5

x=c(1,2,3,4,5)
y=c(1,4,9,16,25)
proby9 = pmfy(9)
print(paste("probability of Y=9 when x=3", proby9))

proby=sapply(y,pmfy)
proby

exp=sum(y*proby)
exp

exp2=sum(y^2*proby)
exp2

vari=exp2-exp1^2