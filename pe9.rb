# problem 9

0.upto 500 do |a|
	a.upto 500 do |b|
		c = Math.sqrt(a**2+b**2)
		if (c%1==0)&&(a+b+c==1000)
			puts a*b*c
		end
	end
end
puts "nothing found!"