class Customer
  
attr_accessor :age, :name
@@all =[]

def initialize(name, age)
  @name = name
  @age = age
  @@all << self 
end

def self.all
  @@all 
end

def new_meal
  
end