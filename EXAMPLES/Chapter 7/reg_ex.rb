puts /cat/ =~ "dog and cat"
puts /and/ =~ "and we and we"

if /cat/ =~ "we all gocating to"
  puts "there is"
end
if /cat/ !~ "we all going to"
  puts "there is not"
end

pattern = /a/
str = "a long time ago in a galaxy, far far away"
puts str.sub(pattern,"*")
puts str.gsub(pattern,"*")
str.gsub!(pattern,"*")
puts str
str = "a long time ago in a galaxy, far far away"

puts Regexp.new("imefef").match(str)
puts Regexp.new("ime").match(str)
match = Regexp.new("ime").match(str)
puts "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
match = Regexp.new(/\|/).match("yes | no")
puts "#{match.pre_match}->#{match[0]}<-#{match.post_match}"

match = Regexp.new(/[aeiou]/).match("a long time ago in a galaxy, far far away")
puts "#{match.pre_match}->#{match[0]}<-#{match.post_match}"

#/(?a)\w+/) ეს რას ნიშნავს???

a = "Nowadays Everybody wanna talk, like they got something to say"
match = Regexp.new(/\w+/).match(a)
puts "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
match = Regexp.new(/\s.*\s/).match(a)
puts "#{match.pre_match}->#{match[0]}<-#{match.post_match}"

match = Regexp.new(/owa|days/).match(a)
puts "#{match.pre_match}->#{match[0]}<-#{match.post_match}"

puts a.gsub(/[aeiou]/,"*")
puts a.gsub(/[aeiou]/) {|vowel| vowel.upcase}
puts a

puts a.downcase.gsub(/\b\w/) {|first| first.upcase }
