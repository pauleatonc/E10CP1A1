module Herviboro
  @@definir = 'Sólo me alimento de vegetales!'

  def self.definir
    @@definir
  end

  def dieta
    "Soy un Herviboro!"
  end
end

module Animal
  def saludar
    "Soy un animal!"
  end
end

class Conejo
  include Herviboro
  include Animal
  def initialize(name)
    @name = name
    print "Mi nombre es #{@name}\n"
  end
end

conejo = Conejo.new('Bugs Bunny')
puts conejo.saludar
puts conejo.dieta
puts Herviboro.definir
