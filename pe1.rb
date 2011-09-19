# problem 1

w = (1..1000).to_a.keep_if {|t| t%5==0||t%3==0}
puts w.inject :+