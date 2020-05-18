class Player
  attr_reader :name, :position
  
  def initialize(animal_info)
    @name = animal_info[:name]
    @position = animal_info[:position]
  end
end
