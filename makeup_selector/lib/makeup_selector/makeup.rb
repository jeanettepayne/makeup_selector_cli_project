module MakeupSelector
 class Makeup
  attr_reader :product_category, :brand, :name, :price, :rating, :description
  
  @@all = []
  
  def initialize(product_category, brand, name, price, rating, description)
    @product_category = product_category
    @brand = brand
    @name = name
    @price = price 
    @rating = rating 
    @description = description
    @@all << self
  end

  
 def self.all
   @@all
 end
 

 end
end

