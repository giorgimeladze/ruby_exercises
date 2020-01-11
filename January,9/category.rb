class Category
	
	def Category.species_chosen(animals, species)
		specie = ''
		while true
			specie = gets.downcase.strip
			unless species.include?(specie)
				puts "try again"
				next
			end
			break
		end
		animals = animals.select {|animal| animal.specie == specie}
	end

	def Category.colors_chosen(animals, colors)
		color = ''
		while true
			color = gets.downcase.strip
			unless colors.include?(color)
				puts "try again"
				next
			end
			break
		end
		animals = animals.select {|animal| animal.color == color}
	end

	def Category.sexes_chosen(animals, sexes)
		sex = ''
		while true
			sex = gets.downcase.strip
			unless sexes.include?(sex)
				puts "try again"
				next
			end
			break
		end
		animals = animals.select {|animal| animal.sex == sex}
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