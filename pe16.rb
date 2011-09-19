# problem 16

x = 1 << 1000
puts x.to_s.split(//).map(&:to_i).inject(:+)