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
    attr_accessor :number
    def initialize(number)
        @number = number
    end
    def exponent(expon)
        exp(2.71,expon)
    end
end

me = MyClass.new(30)
puts me.number
puts MyClass::PI
puts me.prod(2,3)
puts me.exponent(2)
puts me.exp(3,3)