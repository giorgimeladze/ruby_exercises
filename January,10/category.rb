class Category
	
	def Category.species_chosen(animals)
		specie = gets.downcase.strip
		animals = animals.select {|animal| animal.specie.include?(specie)}
	end

	def Category.colors_chosen(animals)
		color = gets.downcase.strip
		animals = animals.select {|animal| animal.color.include?(color)}
	end

	def Category.sexes_chosen(animals)
		sex = gets.downcase.strip
		animals = animals.select {|animal| animal.sex.include?(sex)}
	end	

	def Category.ages_chosen(animals)
		age = ''
		expression = ''
		while true
			array = gets.chomp.split(",")
			if array.length != 2 
				puts "try again"
				next
			end
			age = Integer(array[0].strip) rescue nil
			expression = array[1].strip
			if age == nil || (expression != '<' && expression != '>' && expression != '=')
				puts "try again"
				next
			end
			break
		end
	
		if expression == "<"
			animals = animals.select {|animal| animal.age < age}
		elsif expression == ">"
			animals = animals.select {|animal| animal.age > age}
		else
			animals = animals.select {|animal| animal.age == age}
		end

		animals
	end

	def Category.counts_chosen(animals)
		count = ''
		expression = ''
		while true
			array = gets.chomp.split(",")
			count = Integer(array[0]) rescue nil
			expression = array[1].strip
			if array.length != 2 || count == nil || (expression != '<' && expression != '>' && expression != '=')
				puts "try again"
				next
			end
			break
		end
	
		if expression == "<"
			animals = animals.select {|animal| animal.count < count}
		elsif expression == ">"
			animals = animals.select {|animal| animal.count > count}
		else
			animals = animals.select {|animal| animal.count == count}
		end

		animals
	end
end