def isPrime n
	return false if n <= 1
	2.upto Math.sqrt n do |x|
		return false if n%x==0
	end
	true
end

sum=0
2000000.times do |x|
	if isPrime(x)
		sum+=x
	end
end
puts sum