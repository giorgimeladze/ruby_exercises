class Person
	attr_reader :age, :name, :lastname 
	def initialize(name, lastname, age)
		@name = name
		@lastname = lastname
		@age = age
	end

	def print()
		"name : #{@name},  lastname : #{lastname}, age : #{age}"
	end
end

class Student < Person
	attr_reader :gpa, :id
	def initialize(name, lastname, age, gpa, id)
		super(name,lastname,age)
		@gpa = gpa
		@id = id
	end

	def print()
		string = "#{super} \ngpa  : #{gpa}, id : #{id}"
	end
end

student = Student.new("gio", "meladze", 20, 3.94, 2314)
puts student.age
puts student.print()


