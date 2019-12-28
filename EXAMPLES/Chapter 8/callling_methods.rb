def num_sign(num)
	case num
	when 1..(1 << 64)
		"positive"
	when -(1 << 64)...0
		"negative"
	else
		"zero"
	end
end

puts num_sign(5)
puts num_sign(0)

def meth_three
	100.times do |num|
		print num," "
		square = num*num
		return num, square if square > 1000
	end
end
puts
puts meth_three

class Song
	def Song.output(name, duration)
		puts "#{name}"
		print duration
		puts
	end

	def Song.search(name, minutes: 0, seconds: 0)
		p [name, minutes, seconds]
	end

	def Song.search(name, minutes: 0, seconds: 0, **rest)
		p [name, minutes, seconds, rest]
	end
end

Song.output("Gummy", minutes: 4, seconds: 42)
Song.search("Gummy", seconds: 50)
Song.search("Gummy", minutes: 4, band: 'Brockhampton', genre: 'Hip-Hop', seconds: 42)




