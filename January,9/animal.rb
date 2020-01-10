class Animal
	attr_reader :specie,:age,:color,:sex,:count

	def initialize(specie,age,color,sex,count)
		@specie = specie
		@age = age.to_i
		@color = color
		@sex = sex
		@count = count.to_i
	end

  def to_s
    "#{@specie},#{@age},#{@color},#{@sex},#{@count}"
  end
end
