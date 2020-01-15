#4
def fill
	array = Array.new(2)
	for i in 0...array.length
		array[i] = gets.chomp
	end
	array
end

def add(array,new_array)
	for i in 0...array.length
		return if array[i].include?("a")
	end
	for i in 0...array.length
		new_array << array[i]
	end
end

puts "Enter n"
n = Integer(gets.chomp) + 1
array = Array.new(n)

for i in 0...n
	puts "array N#{i}"
	array[i] = fill
end

new_array = []
i = 0
while i < n
	add(array[i],new_array)
	i += 1
end

p new_array