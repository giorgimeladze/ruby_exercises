#2
def fill(array)
	i = 0
	while i < array.length
		array[i] = gets.chomp
		i += 1
	end
end


puts "Enter n"
n = Integer(gets.chomp)
puts "Enter m"
m = Integer(gets.chomp)
array1 = Array.new(n,"")
array2 = Array.new(m,"")

puts "Enter array1"
fill(array1)
puts "Enter array2"
fill(array2)

array1 = array1 + array2
p array1