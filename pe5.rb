#needed input
till = 20
primes = [2,3,5,7,11,13,17,19]

#get factor for each prime
factors = primes.map { |f|
  f > (limit ||= till**0.5) ? 1 :
  ( Math.log(20)/Math.log(f) ).to_i
}

#now multiply all primes**factors
number = 1
p = primes.each # init extern iterators
f = factors.each

loop{ number *= p.next**f.next }
#loop breaks when StopIteration is raised

#output
puts number
