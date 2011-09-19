def convert word
  word.each_byte do |i|
    total += i-64
  end
  total
end

f = File.open('names.txt')
s = f.gets()
f.close()

total = 0

s = s.scan(/\w+/)
s = s.sort

s.each_with_index do |name, i|
  total += convert(name) * (i+1)
end

puts total
