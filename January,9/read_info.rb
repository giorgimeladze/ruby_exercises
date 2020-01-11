require_relative 'animal'
require_relative 'my_csv'
require_relative 'category'

@animals = []
@species = []
@colors = []
@sexes = ["male","female"]
@Avaliable_categories = ["specie","age","color","sex","count"]

def get_files()
  MyCSV.read_info("/home/vabaco9/Desktop/MyRuby/January,9/animal_data.csv", @animals)
  @species = MyCSV.file_read("/home/vabaco9/Desktop/MyRuby/January,9/species.txt")
  @colors = MyCSV.file_read("/home/vabaco9/Desktop/MyRuby/January,9/colors.txt")
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
		puts "Choose from these following conditions #{@sexes}"
		return "Se"
	elsif category.downcase.strip == "count"
		puts "Choose count and <,>, or =, with comma-separated"
		return "Cou"
	end
end			
	
def category_chosen(key)
	@animals = Category.species_chosen(@animals, @species) if key == "Sp"
	@animals = Category.ages_chosen(@animals) if key == "A"
	@animals = Category.counts_chosen(@animals) if key == "Cou"
	@animals = Category.sexes_chosen(@animals, @sexes) if key == "Se"
	@animals = Category.colors_chosen(@animals, @colors) if key == "Col"
end

def specification(categories)
	categories.each do |category|
		puts "Enter the detail which you would like to know about #{category}"
		key = details_to_choose(category)
		category_chosen(key)
	end
end


#main
categories = enter_categories_for_search()
get_files()
specification(categories)
if @animals.length == 0
	puts "no such animal is found from base"
else
    @animals.each_with_index do |animal,index|
    	puts "#{index+1}) #{animal}"
    end
end