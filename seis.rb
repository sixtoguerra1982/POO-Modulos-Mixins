class Student
	attr_reader :nota1, :nota2, :nombre
	@@quantity = 0
	def initialize(nombre, nota1 = 4, nota2 = 4)
		@nombre = nombre
		@nota1 = nota1
		@nota2 = nota2
		@@quantity += 1
	end

	def self.quantity
		@@quantity
	end
end

module Test
	def self.result(nota1, nota2)
		promedio = (nota1 + nota2) / 2.to_f
		if promedio > 4
			"Estudiante aprobado"
		else
			"Estudiante reprobado"
		end
	end	
end

module Attendance
	def self.student_quantity
		Student.quantity
	end	
end


s = []
10.times do |i|
	s << Student.new("juan #{rand(1..10)}",rand(1..4), rand(1..7))
end


puts "Cantidad de Estudiantes #{Student.quantity}"

s.each do |x|
	puts "#{x.nombre} #{Test::result(x.nota1, x.nota2)}"
end

puts Attendance::student_quantity