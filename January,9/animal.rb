class Animal
	attr_reader :specie,:age,:color,:sex,:count

	def initialize(specie,age,color,sex,count)
		@specie = specie
		@age = age
		@color = color
		@sex = sex
		@count = count
	end
end
