puts 2.instance_of?(Integer)
puts 2.0.instance_of?(Integer)
puts 2.class
=begin
	? --> methods that return boolean	
	! --> that modify the receiver
	'word' * 5 --> am stilshi
=end

def seconds_calc(seconds = 0, minutes = 30, hours = 1)
	time = 3600 * hours + 60 * minutes + seconds
end

puts seconds_calc(30)
puts seconds_calc(0,48,0)

puts "[" * 4 + 'Alex' + "f" * 5

def varargs(par1, *params, par2)
	"#{par1}  #{params} #{par2}"
end
puts varargs(3, 'one', 'two', 'three', 3)


def square(num)
	yield(num*num)
end

puts square(3) {|var| "I got #{var}"}
