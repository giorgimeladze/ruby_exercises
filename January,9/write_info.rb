require_relative 'animal'
require_relative 'my_csv'


@species = []
@color = []
@sexes = ["male","female"]

def check_specie(specie)
  @species.include?(specie) ? "OK" : nil
end

def check_sex(sex)
  @sexes.include?(sex) ? "OK" : nil
end

def check_color(color)
  @colors.include?(color) ? "OK" : nil
end

=begin
	first checks and then alerts the user to enter input again
	then trims strings from additional spaces
=end
def check_input_correctness(animal_characts)
  init() #initialize
	while true
		count = Integer(animal_characts[4].strip) rescue nil
		age = Integer(animal_characts[1].strip) rescue nil
    correct_input = check_specie(animal_characts[0].downcase.strip) && check_color(animal_characts[2].downcase.strip) && check_sex(animal_characts[3].downcase.strip)
		if animal_characts.length != 5 || count == nil || age == nil || correct_input == nil
			puts "Enter again"
			animal_characts = gets.split(",")
			next
		end
		break
	end

	trim(animal_characts)
end

def trim(animal_characts)
	animal_characts.each do |character|
		character.gsub!(/ /,'')
	end
	animal = Animal.new(animal_characts[0].downcase,animal_characts[1].to_i,animal_characts[2].downcase,animal_characts[3].downcase,animal_characts[4].to_i)
end

def add_info(animal)
	CSV.open("animal_data.csv","a+") do |csv|
  		csv << animal.to_s.split(",")
	end
end

def init
  File.open("species.txt") do |file|
    @species = file.gets.chomp.split(",")
  end
  File.open("colors.txt") do |file|
    @colors = file.gets.chomp.split(",")
  end
end

#main
while true
	puts "Write animal with its specie, age, color, sex, and their count with comma-separated style"
	animal_characts = gets.chomp.split(",")
	animal = check_input_correctness(animal_characts)
	add_info(animal)
	puts "If you would like to stop, enter exit, to continue press any key"
	break if gets.chomp == 'exit'
end
