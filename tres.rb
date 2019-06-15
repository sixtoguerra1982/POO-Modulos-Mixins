class Vehicle
	def initialize(model, year)
		@model = model
		@year = year
		@start = false
	end
	def engine_start
		@start = true
	end
end

class Car < Vehicle
	@@contador_i = 0
	def initialize
 		@@contador_i +=1
 	end
 	def self.get_number_of_instances
 		@@contador_i
 	end

 	def engine_start
 		puts 'El motor se ha encendido!'
 	end
end

10.times do |i|
 Car.new.engine_start
end

puts Car.get_number_of_instances


