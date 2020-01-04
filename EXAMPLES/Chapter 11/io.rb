file = File.new("C:\\Users\\Giorgi\\Desktop\\Vabako\\RUBY FOLDER\\Chapter 11\\file.txt","r")
begin
  puts file.mtime
  puts file.size
  puts file.lstat.size
  puts file.stat.size
  puts File.blockdev?("file.txt")
rescue IOError
  puts "IOError"
rescue Exception
  puts "Exception"
ensure
  file.close
end

while line = gets
  print line, " "
end
puts

File.open("C:\\Users\\Giorgi\\Desktop\\Vabako\\RUBY FOLDER\\Chapter 11\\file.txt") do |file|
  file.each_byte.with_index do |ch, index|
    print "#{ch}:#{index} "
    break if index > 50
  end
end

File.open("C:\\Users\\Giorgi\\Desktop\\Vabako\\RUBY FOLDER\\Chapter 11\\file.txt") do |file|
  file.each_line(" ") {|line| puts line,"+" }
end
puts

str = IO.readlines("C:\\Users\\Giorgi\\Desktop\\Vabako\\RUBY FOLDER\\Chapter 11\\file.txt")
puts str.length
