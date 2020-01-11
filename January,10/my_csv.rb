require 'csv'
require_relative 'animal'

class MyCSV
	def MyCSV.add_info(animal)
		CSV.open("animal_data.csv","a+") do |csv|
  		csv << animal.to_s.split(",")
  	end
	end

	def MyCSV.read_info(animals)
		CSV.foreach("/home/vabaco9/Desktop/MyRuby/January,10/animal_data.csv", headers: true) do |row|
    	animals << Animal.new(row["specie"],row["age"],row["color"],row["sex"],row["count"])
    end
  end

  def MyCSV.file_read(pathname)
  	array = []
  	File.open(pathname) do |file|
    	array = file.gets.chomp.split(",")
  	end
  	array
  end
end