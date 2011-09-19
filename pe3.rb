# problem 3

a = 600851475143
f = 2 # smallest prime factor

a%f==0 ? a/=f : f+=1 while a>1

puts f
