x<-c(20,1,10,30,40,200)
mi=min(x);
ma=max(x);


print(paste("The min and max are",mi,"and", ma))



# factorial
n=as.integer(readline(prompt="Enter a value :"))
fact=1

if(n<0) {
  print("N is negative")
} else if (n==0){
  print("The factorial is 1")
} else {
  for(i in 1:n){
    fact=fact*i
  }
}

print(fact)


# fibonacci | For Loop

n=n=as.integer(readline(prompt="Enter no of terms :"))

n1=0;
n2=1;

for(i in 1:n){
  sum=n1+n2;
  n1=n2
  n2=sum
}

print(paste("The Fibonacci sum of",n,"terms is :", sum))


# Fibonacci | While loop


n=n=as.integer(readline(prompt="Enter no of terms :"))
if (n<0){
  print("Enter some positive number")
} else if(n==0){
  print("Sequence not possible")
} else {
n1=0;
n2=1;

while (n>0){
  sum=n1+n2
  n1=n2
  n2=sum
  n=n-1
  print(n)
}
}
print(sum)


# Custom caluclator

c_add = function(n1,n2){
  sum=n1+n2
  print(sum)
}
c_sub = function(n1,n2){
  sum=n1-n2
  print(sum)
}
c_mult = function(n1,n2){
  sum=n1*n2
  print(sum)
}
c_div = function(n1,n2){
  sum=n1/n2
  print(sum)
}

custom_calc= function(){
  n1=as.integer(readline(prompt="Enter number 1 :"))
  n2=as.integer(readline(prompt="Enter number 2 :"))
  n=as.integer(readline(prompt="Choose a option 1.Addition 2.Subtraction 3.Multiplication 4.Division : "))
  
  
  result=switch(n,c_add(n1,n2),c_sub(n1,n2),c_mult(n1,n2),c_div(n1,n2))
  operator=switch(n,"+","-","*","/")
  print(paste("Ans: ",n1, operator, n2,"is", result))
}

custom_calc()



if (n==1){
  c_add(n1,n2)
} else if (n==2){
  c_sub(n1,n2)
} else if (n==3){
  c_mult(n1,n2)
} else if (n==4){
  c_div(n1,n2)
} else {
  print("Enter a valid number")
}
