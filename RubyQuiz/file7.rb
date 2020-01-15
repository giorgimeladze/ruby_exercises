#7
def power_of(n)
	yield(n)
end

puts "enter n and m"
n = Integer(gets.chomp)
m = Integer(gets.chomp)

power_of(n) {|k| print k**m }