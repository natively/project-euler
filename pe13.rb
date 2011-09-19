s = File.open("bignums.txt")
	.read
	.split
	.collect(&:to_i)
	.inject(:+)

puts s.to_s.slice(0..9)