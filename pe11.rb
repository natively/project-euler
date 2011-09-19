# problem 11

num_file = File.open("in.txt")

nums = Array.new(20)

20.times do |i|
	nums[i] = num_file.gets.split.collect! { |x| x.to_i }
end

num_file.close

winner = 0

# down
for y in 0..16
	for x in 0..19
		product = nums[x][y]*nums[x][y+1]*nums[x][y+2]*nums[x][y+3]
		if (product > winner)
			winner = product
		end
	end
end

# down-left
for y in 0..16
	for x in 0..16
		product = nums[x][y+3]*nums[x+1][y+2]*nums[x+2][y+1]*nums[x+3][y]
		if (product > winner)
			winner = product
		end
	end
end

# down-right
for y in 0..16
	for x in 0..16
		product = nums[x][y]*nums[x+1][y+1]*nums[x+2][y+2]*nums[x+3][x+3]
		if (product > winner)
			winner = product
		end
	end
end

# right
for y in 0..19
	for x in 0..16
		product = nums[x][y]*nums[x+1][y]*nums[y+2][y]*nums[y+3][y]
		if (product > winner)
			winner = product
		end
	end
end

puts winner