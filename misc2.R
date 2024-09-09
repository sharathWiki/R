f_t<-function(t){
  0.1*exp(-0.1*t)
}
expected_value<-function(t){
  t*f_t(t)
}
result<-integrate(expected_value,lower=0,upper=Inf)
print(result)

X<-c(0,1,2,3)
Y<-c(-12,-2,8,18)
p_x<-c(0.1,0.2,0.2,0.5)
expected_value<-sum(Y*p_x)
expected_value

func1<-function(x){
  0.5*exp(-abs(x))
}
first_moment<-function(){
  integrate(function(x) x*func1(x),lower=1,upper=10)$value
}
second_moment<-function(){
  integrate(function(x) x^2*func1(x),lower=1,upper=10)$value
}
mean<-first_moment()
second_moment_value<-second_moment()
variance<-second_moment_value-mean*mean
mean
variance

f_X<-function(x){
  (3/4)*(1/4)^(x-1)
}
y<-x^2
f_X(y)
p_x_3<-f_X(3)
x=as.integer(readline( prompt="enter value of x"))
