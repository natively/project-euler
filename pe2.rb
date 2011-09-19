# problem 2

a = [1,2]
i = 1
while a[i]<=4000000
	a.push(a[i]+a[i-1])
	i+=1
end
a.keep_if {|q| q%2==0}
puts a.inject(:+)