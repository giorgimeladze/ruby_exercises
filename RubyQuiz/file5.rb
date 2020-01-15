#5
class Integer
	alias old_plus +
	alias old_modulo %

	def + (other)
		old_plus(2 *(other))
	end

	def * (other)
		old_modulo(other)
	end
end


puts "Enter integer a,b,c"
a = Integer(gets.chomp)
b = Integer(gets.chomp)
c = Integer(gets.chomp)

puts a + b * c