require 'open-uri'

e = TypeError.new
puts e.inspect
puts e.backtrace.inspect

web_page = open("https://www.google.com/search?sxsrf=ACYBGNSSBnr7X55T7bR8ciCzAEDb6hKsRg%3A1577516596845&ei=NP4GXrKdM4HLwQLnx6mQAw&q=json+file+example+webpage&oq=json+file+example+webpage&gs_l=psy-ab.3..33i22i29i30j33i10.3003.4203..4321...0.4..0.144.866.0j7......0....1..gws-wiz.......0i71j0j0i22i30.EMpBaIBlhTE&ved=0ahUKEwiyh4ej49fmAhWBZVAKHedjCjIQ4dUDCAs&uact=5")
output = File.open(web_page, "r")
a = 0
begin 
	while line = web_page.gets
		puts line
		a += 1
		break if a > 11
	end
rescue SyntaxError,TypeError
	STDERR.puts "failed to read one"
	raise
rescue Exception
	STDERR.puts "failed to read"
	raise
else 
	puts "\nCongrats"
ensure
	output.close
end
puts
puts
puts "          a"

def increase(num)
	num +=1
	if num == 4
		raise StandardError, "no need for 4"
	end
	num
end

num = 0
isFour = false
while num < 10
	begin
		if isFour
			num += 1
			isFour = false
		end
		print num," "
		num = increase(num)
	rescue
			isFour = true
		retry
	end
end