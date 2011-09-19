f = [0,1,1]
i = 2
until f[i].to_s.length == 1000
	i += 1
	f.push( f[i-1] + f[i-2] )
end

print i