#1
array = [1,2,3,4,5,6,7,8,9,10]
array.each { |x| print "#{x}, " }
print "\n"

#2
array.each { |x| print "#{x}, " if x > 5 }
print "\n"

#3
array.select! { |x| x > 5 }
new_array = array.select { |x| x % 2 == 0 }
new_array.each {|x| print "#{x}, " }
print "\n"

#4
array = [1,2,3,4,5,6,7,8,9,10]
array.append(11)
array.prepend(0)
array.each {|x| print "#{x}, " }
print "\n"

#5
array.delete(11)
array.append(3)
array.each {|x| print "#{x}, " }
print "\n"

#6
array = array.uniq
array.each {|x| print "#{x}, " }
print "\n"

#7
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|x| x.start_with?('s') }
array.each {|x| print "#{x}, " }
print "\n"

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|x| x.start_with?('s') or x.start_with?('w') }
array.each {|x| print "#{x}, " }
print "\n"

#8
fruit_string = "boulder, apple, banana, peach, cow"
fruit_array = fruit_string.split(",")
puts fruit_array.pop()
fruit_array.shift()
fruit_string = fruit_array.join(", ")
puts fruit_string

#9
def with_these_numbers(a, b)
    yield a, b
end

with_these_numbers(1,5) do |first, second|
    puts first + second
end

with_these_numbers(12, 3) do |first, second|
  puts first / second # Output: 4
end

#10
class Rectangle
  attr_reader :width, :height

  def width=(value)
    if value < 0
      raise "Width can't be negative!"
    end
    @width = value
  end

  def height=(value)
    if value < 0
      raise "Height can't be negative!"
    end
    @height = value
  end

  private
 
  def area
    width * height
  end
end


class Square < Rectangle
    def width=(value)
        if value < 0
            raise "Width can't be negative!"
        end
        @width = value
        @heigh = value
    end
   
    def s_area
        return area
    end
end

square = Square.new
square.width = 10
puts square.s_area