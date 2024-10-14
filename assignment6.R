#1
cfunc=function(x,y){
  2*(2*x+3*y)/5
}
integral2(cfunc,0,1,0,1)
integral2(cfunc,0,1,0,1)$Q
integral2(cfunc,0,1,0,1)$error


# 1b)
cfunc2=function(y){
  2*(2+3*y)/5
}
integral(cfunc2,0,1)

#1c)
cfunc3=function(x){
  2*(2*x)/5
}
integral(cfunc3,0,1)

#1d)
cfunc4=function(x,y){
  x*y*cfunc(x,y)
}
integral2(cfunc4,0,1,0,1)


#2
cfunc5=function(x,y){
  (x+y)/30
}
x=c(0,1,2,3)
y=c(0,1,2)

#2a)
#matrix(c(f(0,01),f(0,1))) ....
# or better method 
m=matrix(c(f(0,0:2),f(1,0:2),f(2,0:2),f(3,0:2)),nrow = 4,ncol = 3,byrow = TRUE)
m

#2b)
sum(m)

#2c)
h=apply(m,1,sum)
h
#if asked only for 2 h[2]

#2d)
g=apply(m,2,sum)
g

#2e)
#p(A|B) = p(0,1)/sum
m[1,2]/g[2]

#2f)
Ex=sum(x*h)
Ey=sum(y*g)
Ex
Ey
M2x=sum(x*x*h)
M2y=sum(y*y*g)
M2x
M2y
varx=M2x-(Ex*Ex)
vary=M2y-(Ey*Ey)
varx
vary
