#8
class Person
	def initialize(name,last_name,person_id)
		@name = name
		@last_name = last_name
		@person_id = person_id
	end
	def name
		@name
	end
	def name=(other)
		@name = other
	end

	def last_name
		@last_name
	end
	
	def last_name=(other)
		@last_name = other
	end

	def person_id
		@person_id
	end
	
	def person_id=(other)
		@person_id = other
	end
end

class Student < Person 
	def initialize(name,last_name,person_id,gpa,school_name,school_city)
		super(name,last_name,person_id)
		@gpa = Float(gpa)
		@school_name = school_name
		@school_city = school_city
	end

	def gpa
		@gpa
	end
	
	def gpa=(other)
		@gpa = other
	end

	def school_name
		@school_name
	end
	
	def school_name=(other)
		@school_name = other
	end

	def school_city
		@school_city
	end
	
	def school_city=(other)
		@school_city = other
	end

	private
	def calc_gpa
		@gpa * 1.1 
	end

	public 
	def get_gpa
		calc_gpa
	end
end

student = Student.new("giorgi","meladze","0177","3.5","199","tbilisi")
puts student.name
puts student.last_name
student.last_name = "mela"
puts student.last_name
puts student.person_id
puts student.gpa
student.gpa = 4.0
puts student.gpa
puts student.school_city
puts student.school_name
puts student.get_gpa

begin
	puts student.calc_gpa
rescue Exception
	puts "can't call private method"
end
