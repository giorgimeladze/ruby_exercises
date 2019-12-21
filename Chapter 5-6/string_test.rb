puts "now is #{def countdown(a) 
					a.downto(1) {|i| print i, " "}
				end  
				countdown(5)
			} for countdown" 
			# aq rato agdebs ase rom amixsnat...

string1 = "dog"
puts RUBY_VERSION
puts "#{string1.encoding}"

puts ?a
array = "2':54:123:122".split(/:/)
p array 

enum = (1..10).to_enum
loop do 
	print enum.next, " "	
end
puts

digits = 1..20
puts digits.include?(6)
puts digits.inject(:*)

puts ('a'.."f") == 'g'
x = Math.sqrt(34353443)
case x
when 0..100
	puts "0-100"
when 101..1000
	puts "101-1000"
when 1001..10000
	puts "1001-10000"
when 10001..100000
	puts "10001-100000"
end
