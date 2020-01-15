#6
def calc(num)
	lambda do |n|
		return num * n + n if n.odd?
		return num * n 	   if n.even?
	end 
end 

a = calc(10)
puts a.call 1
puts a.call 2
puts a.call 3
