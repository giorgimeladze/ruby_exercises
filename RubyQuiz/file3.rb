#3
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

more = n > m ? n : m
less = n > m ? m : n
conc_array = Array.new(more,"")

i = 0
while i < less
	conc_array[i] = array1[i] + array2[i]
	i += 1
end

if n >= m
	while i < more
		conc_array[i] = array1[i]
		i += 1
	end
else 
	while i < more
		conc_array[i] = array2[i]
		i += 1
	end
end

p conc_array