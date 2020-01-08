class Grade
	include Comparable
	@letter
	GRADES = ["A","B","C","D","F"]
	def initialize(letter)
		self.letter= letter
	end

	def letter
		@letter
	end

	def letter= (letter)
		raise InputError unless GRADES.include?(letter)
		@letter = letter
	end

	def <=> (other)
		if @letter < other.letter
			return 1
		elsif @letter > other.letter
			return -1
		else
			return 0
		end
	end
end

a_grade = Grade.new("A")
b_grade = Grade.new("B")
c_grade = Grade.new("C")
d_grade = Grade.new("D")
f_grade = Grade.new("F")

puts "a_grade > c_grade: #{a_grade > c_grade}"
puts "f_grade < d_grade: #{f_grade < d_grade}"
puts "b_grade > a_grade: #{b_grade > a_grade}"
puts "a_grade == a_grade: #{a_grade == a_grade}"

