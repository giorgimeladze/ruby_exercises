print "my code\n"
a = 5
class MyError < StandardError
	attr_reader :ok_to_entry
	def print
		super.inspect
	end

	def isFive(num)
		if num == 5
			@ok_to_entry = true
		end
	end
end


def printable(num)
	a = 0
	while a < num
		print a," "
		if a == 5
			raise MyError
		end
		a += 1
	end
end

begin 
	printable(10)
rescue
	puts "couldn't go up to 10"
end

if a == 5
	e = MyError.new
	puts e.print
	raise MyError, "my exception"
end

#10.4 catch and throw