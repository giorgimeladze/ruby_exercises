class Parent
	def initialize(name)
		@parent = name
	end
	def say_hello 
		puts "Hello from #{self.to_s}"
	end
	def to_s
		@parent
	end
end

class Child < Parent 
	def say_hello
		puts "Hello from #{self}, child of #{super}" #super-ze rato ar idzaxebs Parents?
	end
end


parent1 = Parent.new("parent")
parent1.say_hello
child1 = Child.new("child")
child1.say_hello
puts Child.superclass
puts Parent.superclass
puts 

