a = [1,2,3,4,5]
while a
	puts a.pop
	a = nil if a.length == 0
end

a = false && 99
b = 99 && false
c = false and 99
d = 99 and false
print a," ",b," ",c," ",d,"\n"

a = false || 99
b = 99 || false
c = false or 99
d = 99 or false
print a," ",b," ",c," ",d,"\n"

d ||= "default"
e ||= "default"
print d," ",e,"\n"

puts defined?42.+
puts defined?String

a = 5
b = 5
c = "xyz"
d = "xyz"
puts a.eql?b 
puts a.equal?b 
puts c.eql?d 
puts c.equal?d

a = if b == 5 
		then "gummy"
	else
			 "dummy"
	end

print a,"\n"

a = b > 5 ? true : false
puts a


case 
when a == false
	puts "ffffff"
when b == 5
	puts "aaaaa"
when d == "xyz"
	puts "xxxx"
end

class Maths < String
end

math = Maths.new
puts String === math
puts math === String

print "hello\n" while false
begin
	print "hello\n"
end while false	 #do-while

[1,1,2,3,5,8].each {|val1, val2| print val1,"->",val2,"\n"}

a = 0

loop do 
	a += 1
	break if a == 5
end
puts a

class Periods
	def each
		yield "Classical"
		yield "Jazz"
		yield "Rock"
		yield "!!"
	end
end

periods = Periods.new
for genre in periods
	print genre, " "
end
puts
a = 0
while a < 10
	print a," "
	if a == 4
		a += 1
		next
	end
	if a == 7
		print a," "
		a+=1
		redo
	end
	a += 1
end
puts

square = "yes"
total = 0

[1, 2, 3 ].each do |val; square|
	square = val * val
	total += square
end

puts "Total = #{total}, square = #{square}"