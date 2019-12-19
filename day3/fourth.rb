require 'csv'

class Student
	attr_accessor :name, :last_name, :debt, :gpa

	def initialize(name, last_name, gpa, debt)
		@name = name
		@last_name = last_name
		@gpa = gpa
		@debt = debt
	end

end

class Students
	attr_accessor :students_array

	def initialize
		@students_array = []
	end

	def insert_student(student)
		@students_array << student
	end

	def read_csv_file(csv_file)
		CSV.foreach(csv_file, headers: true) do |row|
			insert_student(Student.new(row["name"],row["last_name"],Float(row["gpa"]),Float(row["debt"])))
		end
	end

	def student_debt_sum
		sum = 0
		@students_array.each do |student|
			sum += student.debt
		end
		sum
	end

	def print_debts_from_terminal(terminal_array)
	end

end

students = Students.new()
students.read_csv_file("/home/vabaco9/Desktop/MyRuby/day3/data.csv")
puts students.student_debt_sum

students_hash = {}
new_students_arr = []

ARGV.each do |student_name, student_last_name|
	students_hash[:student_name] = student_last_name
end

students_hash.each do |student_name, student_last_name|
	new_students_arr << "#{student_name}, #{student_last_name}" if students.students_array.include?(student_name) and students.students_array.include?(student_last_name)
end

CSV.open("/home/vabaco9/Desktop/MyRuby/day3/student_data.csv", "wb") do |csv|
	new_students_arr.each do |student_whole_name|
		csv << [student_whole_name]
	end
end

var = Student.new("Giorgi","Meladze",3.92,10423)
puts var.gpa
puts students_hash.include?(var.name)