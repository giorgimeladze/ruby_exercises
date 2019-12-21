module Maths
    PI = 3.1415926
    def Maths.grad(x)
        Float(x * 57.3)
    end
    def Maths.sin(x)
        Math.sin(x)
    end
    
    def prod (x,y)
        x*y
    end
    def exp(x, expon)
        result = 1
        expon.downto(1) { result *= x} 
        result
    end
end

class MyClass
    include Maths
    include Comparable
    
    attr_accessor :number
    def initialize(number)
        @number = number
    end
    def to_s
        @number
    end
    def <=>(other)
        self.number <=> other.number
    end
    def exponent(expon)
        exp(2.71,expon)
    end
end

me = MyClass.new(7)

me1 = MyClass.new(me.prod(me.number,6))
me2 = MyClass.new(me.prod(7.5,7.5))
puts "me1 is higher" if me1 > me2
puts "me2 is higher" if me2 > me1