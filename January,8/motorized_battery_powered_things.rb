module Motorized 
	def rev_motor
    	puts "Revving motor!"
	end
end

module BatteryPowered
	@power_level 
	
	def charge
    	@power_level += 1
  	end

  	def power_level
  		@power_level
  	end

  	def power_level= (power_level)
  		@power_level = power_level
  	end
end

class Drill
	include Motorized
	include BatteryPowered

	def initialize
		@power_level = 0
	end
end

class ElectricCar 
	include Motorized
	include BatteryPowered

	def initialize
		@power_level = 0
	end
end

class Phone 
	include BatteryPowered

	def initialize
		@power_level = 0
	end
end

drill = Drill.new
drill.charge
puts drill.power_level

car = ElectricCar.new
car.charge
car.rev_motor

phone = Phone.new
phone.charge
begin 	
	phone.rev_motor
rescue Exception
	puts "no such method in Phone class"
end

