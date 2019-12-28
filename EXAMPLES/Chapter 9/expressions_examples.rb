class Mathematics < Integer
  alias old_plus +
  alias old_minus -
  alias old_mul *
  alias old_div /

  def initialize(num)
    @num = num
  end

  def +(other)
    num.old_plus(other).old_plus(2)
  end
  def -(other)
    num.old_minus(other).old_minus(2)
  end
  def *(other)
    num.old_mul(other).old_plus(2)
  end
  def /(other)
    num.old_div(other).old_minus(2)
  end

end

num1 = Mathematics.new(36) 
puts num1 + 5
puts `date`
puts `ls`.split[3]

def projects(list)
  project = list.map(&:downcase)
end
list = ["and", "or", "The", "We", "Last"]
p projects list

class Test
  def val=(val)
    @val = val
    return 99
  end
end
t= Test.new
result = (t.val = 0)
puts result

a,b = 1,2
print a," ",b
puts
a,b = b,a
print a," ",b
puts
c, = a,b
puts c

a, b, c, d, e = *(1..2), 3, *[4, 5]
print a, b, c, d, e
puts
first, *, last = 1,2,3,4,5,6
print first,last
puts 'a'
