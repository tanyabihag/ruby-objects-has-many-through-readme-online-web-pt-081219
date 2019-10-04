class Waiter

attr_accessor :name, :yrs_experience
@@all = []


def initialize(name, yrs_experience)
  @name = name 
  @yrs_experience = yrs_experience
  @@all << self
end

def self.all
  @@all
end

def new_meal(customer, total, tip=0)
  Meal.new(self, customer, total, tip)
end

  def meals
    Meal.all.select do |meal|
      meal.waiter == self
    end
  end
  
  
  def best_tipper
    oldest_age = 0
    oldest_customer = nil
    self.all.each do |customer|
      if customer.age > oldest_age
        oldest_age = customer.age
        oldest_customer = customer
      end
    end
    oldest_customer
  end

end