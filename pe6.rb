sum = 0
squares = 0
for s in 1..100
  sum+=s
  squares += s*s
end

puts sum*sum - squares 
