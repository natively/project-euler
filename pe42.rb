# triangle number: t_n = (1/2)*n*(n+1)
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# generate some triangle numbers
def triangle n
  n*(n+1)/2
end
triangle_numbers = (1..100).to_a.collect! { |i| triangle i }

f = File.new("words.txt")
words = f.gets.scan(/\w+/)


class String
  def word_val
    v = 0
    self.each_codepoint do |c|
      v += c-64
    end
    v
  end
end

sum = 0
words.each do |w|
  if triangle_numbers.include? w.word_val
    sum += 1
  end
end
p sum