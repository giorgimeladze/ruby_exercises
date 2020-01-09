require 'csv'
require_relative 'animal'


=begin
	first checks and then alerts the user to enter input again 
	then trims strings from additional spaces
=end
def check_input_correctness(animal_characts)
	while true
		count = Integer(animal_characts[-1].chomp) rescue nil
		age = Integer(animal_characts[1].chomp) rescue nil
		if animal_characts.length != 5 || count == nil || age == nil
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
	animal = Animal.new(animal_characts[0],animal_characts[1].to_i,animal_characts[2],animal_characts[3],animal_characts[4].to_i)
end

def add_info(animal)
	CSV.open("animal_data.csv","a+") do |csv|
  		row = CSV::Row.new(animal,[])
  		row["specie"] = animal[0]
  		row["age"] = animals[1]
  		row["sex"] = animals[2]
  		row["color"] = animals[3]
  		row["count"] = animals[4]
  		csv << row
	end
end

while true
	puts "Write animal with its specie, age, color, sex, and their count with comma-separated style"
	animal_characts = gets.split(",")
	animal = check_input_correctness(animal_characts)
	add_info(animal)
	puts "If you would like to stop, enter exit, to continue press any key"
	break if gets.chomp == 'exit'
end
