require_relative 'Trig'
require_relative "my_module"

puts Trig.grad(Trig::PI)
puts Trig.grad(3.1415/2)
puts Trig.sin(30)
puts MyModule.grad
puts MyModule.sin("     Sorry")