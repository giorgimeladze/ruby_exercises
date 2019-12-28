a = 111111111111111111111222222222222222222222222222244444444444444449999999999999999999999
puts a.class
a = 12
puts a.class

puts Rational(3,4)*Rational(4,8)
a = -132
puts "#{a} - #{a.abs}"

a = "8"
b = "10"
puts Integer(a) + Integer(b)
puts 1 + 5
puts 1 + Complex(1,2)
puts 1 + Rational(3,5)
puts 1.0 + Rational(3/5)

99.step(40,5) {|x| print x, " " }
puts
40.step(62,5) {|x| print x, " " }
puts
x = 7
x.downto(1) {|b| print b, " " }
puts

fibonaci(1000) {|num| print num," "}
puts 
puts ["H", "A", "d"].map {|x| x.succ}

[1,3,1,5].inject(100) {|prod, result| prod / result} 

enum = [1, 3, 1, 5].to_enum
loop do
	print enum.next, " "
end
puts
puts enum.class

class ProcExample
	def pass_block(&action)
		@stored_proc = action
	end
	def use_proc(parameter1, parameter2)
		@stored_proc.call(parameter1,parameter2)
	end
end

ex = ProcExample.new()
ex.pass_block {|param1, param2| print "the ...#{param1 * param2 / (param1 + param2)}" }
ex.use_proc(50,23)

def multiply(factor)
	Proc.new {|n| n * factor}
end

time3 = multiply(3)
puts time3.call(16)
puts time3.call(3)