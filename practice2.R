# bayesth= function(pA,pB,pBA){
#   pAB=(pA*pBA)/pB
# }

# cloudy(b) = 0.4 
# rainy (a) = 0.2
# p(b|a) = 0.85 

# print(bayesth(0.2,0.4,0.85))

ans=dbinom(7,12,1/6)+dbinom(8,12,1/6)+dbinom(9,12,1/6)
ans

ans2=pbinom(9,12,1/6)-pbinom(6,12,1/6)
ans2
