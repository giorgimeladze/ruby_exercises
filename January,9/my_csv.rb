require 'csv'
require_relative 'animal'

class MyCSV
	def MyCSV.add_info(pathname, animal)
		CSV.open(pathname, "a+") do |csv|
  		csv << animal.to_s.split(",")
  	end
	end

	def MyCSV.read_info(pathname, animals)
		CSV.foreach(pathname, headers: true) do |row|
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