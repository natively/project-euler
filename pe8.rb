num_file = File.open("in.txt")
n_str = num_file.read.strip

1000.times do |z|
	running = 1
	5.times do |p|
		running *= n_str[z+p].to_i
	end
	if running > winner
		winner = running
	end
end

p winner