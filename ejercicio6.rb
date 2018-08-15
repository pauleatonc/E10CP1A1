module Test
  def result
    ((@nota1 + @nota2) / 2.0 > 4) ? "Estudiante aprobado" : "Estudiante reprobado" # Códido mejorado en clases
    # (@nota1 + @nota2) / 2
    # if a > 4
    #   print "Estudiante aprobado con nota #{a}\n"
    #   else
    #     print "Estudiante reprobado con nota #{a}\n"
    # end    ---------------> mi codigo
  end
end

module Attendance
  def self.student_quantity
    @@student_quantity
  end
end

class Student
  attr_accessor :nombre, :nota1, :nota2
  include Test
  extend Attendance
  @@quantity = 0
  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end
end


a = []
10.times{|s| a << Student.new("Oscar #{s}", rand(1..7), rand(1..7))}
b = a[rand(1..10)]
puts b.nombre
puts b.result
puts "Notas: #{b.nota1}, #{b.nota2}. Promedio: #{(b.nota1 + b.nota2) / 2.0}"
puts Student.student_quantity
