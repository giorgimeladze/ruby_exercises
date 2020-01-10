require 'csv'
require_relative 'animal'

@animals = []
@species = []
@colors = []
@Sex = ["male","female"]
@Avaliable_categories = ["specie","age","color","sex","count"]

def read_csv
  CSV.foreach("animal_data.csv", headers: true) do |row|
    @animals << Animal.new(row["specie"],row["age"],row["color"],row["sex"],row["count"])
  end
  File.open("species.txt") do |file|
    @species = file.gets.chomp.split(",")
  end
  File.open("colors.txt") do |file|
    @colors = file.gets.chomp.split(",")
  end
end

def enter_categories_for_search
	categories = []
	while true
		puts "Enter Categories which you would like to search with comma-separated style"
		puts "Choose from Five category: specie,age,color,sex,count"
		categories = gets.chomp.split(",")
		needs_to_retry = false
		categories.each do |category|
			unless @Avaliable_categories.include?(category.downcase.strip)
				needs_to_retry = true
				break
			end
		end
		next if needs_to_retry
		break
	end
	categories
end

def details_to_choose(category)
	if category.downcase.strip == "specie"
		puts "Choose from these following conditions: #{@species}"
		return "Sp"
	elsif category.downcase.strip == "age"
		puts "Choose age and <,> or =, with comma-separated"
		return "A"
	elsif category.downcase.strip == "color"
		puts "Choose from these following conditions #{@colors}"
		return "Col"
	elsif category.downcase.strip == "sex"
		puts "Choose from these following conditions #{@Sex}"
		return "Se"
	elsif category.downcase.strip == "count"
		puts "Choose count and <,>, or =, with comma-separated"
		return "Cou"
	end
end			

def species_chosen()
	specie = ''
	while true
		specie = gets.downcase.strip
		unless @species.include?(specie)
			puts "try again"
			next
		end
		break
	end
	@animals = @animals.select {|animal| animal.specie == specie}
end

def colors_chosen()
	color = ''
	while true
		color = gets.downcase.strip
		if !@colors.include?(color)
			puts "try again"
			next
		end
		break
	end
	@animals = @animals.select {|animal| animal.color == color}
end

def sexes_chosen()
	sex = ''
	while true
		sex = gets.downcase.strip
		if !@Sex.include?(sex)
			puts "try again"
			next
		end
		break
	end
	@animals = @animals.select {|animal| animal.sex == sex}
end

def ages_chosen()
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
		@animals = @animals.select {|animal| animal.age < age}
	elsif expression == ">"
		@animals = @animals.select {|animal| animal.age > age}
	else
		@animals = @animals.select {|animal| animal.age == age}
	end
end

def counts_chosen()
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
		@animals = @animals.select {|animal| animal.count < count}
	elsif expression == ">"
		@animals = @animals.select {|animal| animal.count > count}
	else
		@animals = @animals.select {|animal| animal.count == count}
	end
end
	
def category_chosen(key)
	species_chosen() if key == "Sp"
	ages_chosen() if key == "A"
	counts_chosen() if key == "Cou"
	sexes_chosen() if key == "Se"
	colors_chosen() if key == "Col"
end

def specification(categories)
	categories.each do |category|
		puts "Enter the detail which you would like to know about #{category}"
		key = details_to_choose(category)
		category_chosen(key,)
	end
end

#main
categories = enter_categories_for_search()
read_csv()
specification(categories)
if @animals.length == 0
	puts "no such animal is found from base"
else
    @animals.each_with_index do |animal,index|
    	puts "#{index+1}) #{animal}"
    end
end