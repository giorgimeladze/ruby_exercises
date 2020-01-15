#9
puts "Enter n"
n = Integer(gets.chomp)
array = Array.new(n,0)

for i in 0...n
	puts "Enter #{i}"
	array[i] = Integer(gets.chomp)
end

array = array.select { |n| n.even? }
puts array.inject(:+)