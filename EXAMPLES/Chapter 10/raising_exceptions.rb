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
=begin
if a == 5
	e = MyError.new
	puts e.print
	raise MyError, "my exception"
end

puts Errno::EIO:Errno #???
=end
i = 0
k = catch :quit_counting do
  while true
    print i," "
    i += 1
    throw(:quit_counting, 5) if i == 5
  end
end
puts
puts k
