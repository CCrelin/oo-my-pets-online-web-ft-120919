class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name=nil)
    @name = name
    @species = "human"
    @@all << self 
  end 
  
  def say_species
     return "I am a #{@species}."
  end
  
  def self.all 
    @@all 
  end 
  
  def self.count 
    @@all.count
  end
  
  def self.reset_all
    @@all.clear 
  end
  
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(name)
  new_cats = Cat.all.select {|cat| cat.name == name} 
  new_cats.count
  end 
    
end