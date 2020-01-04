require 'stringio'
require 'open-uri'


page = open('https://www.youtube.com/watch?v=VC4ORS5n9Hg').read
if page =~ %r{<title>(.*?)</title>}m
  puts "Title is #{$1.inspect}"
end
 #Talking to Network dawere and HTML

File.open("C:\\Users\\Giorgi\\Desktop\\Vabako\\RUBY FOLDER\\Chapter 11\\write.txt", "w") do |file|
  file.puts "Hello"
  file.puts "1+1 = #{1+1}"
end

File.open("C:\\Users\\Giorgi\\Desktop\\Vabako\\RUBY FOLDER\\Chapter 11\\write.txt") do |file|
  while line = file.gets
    ip = StringIO.new(line)
    op = StringIO.new("","w")
    ip.each_line do |line|
      op.puts line.reverse
    end
    puts op.string
  end
end
