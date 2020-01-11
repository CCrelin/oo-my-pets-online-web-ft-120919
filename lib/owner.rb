class Owner
  attr_reader :name, :species
  
  def initialize(name=nil)
    @name = name
    @species = "human"
  
  end 
  
  def say_species
    puts @species
  end
  
end