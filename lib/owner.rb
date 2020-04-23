class Owner
  attr_reader :species, :name

  @@all = []
  @@pets = []

  def initialize(name, species = "human")
    @species = species
    @name = name
    @@all << self
  end
  
  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end
  
  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end
  
  def pets
    @@pets
  end
  
  def buy_cat(cat)
    @@pets[:] << Cat.new(cat)
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end



end