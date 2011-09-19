products = 
  (100..999).map { |i|
    (100..999).map { |j|
      i*j
    }
  }.flatten.select{ |p|
      p.to_s == p.to_s.reverse
    }.sort.reverse

puts products[0]
