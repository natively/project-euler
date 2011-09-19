def isPrime n
	return false if n <= 1
	2.upto Math.sqrt n do |x|
		return false if n%x==0
	end
	true
end

x=2
i=1
while i<=10001
	if isPrime x
		i+=1
		if i==10001
			puts x
		end
	end
	x+=1
end