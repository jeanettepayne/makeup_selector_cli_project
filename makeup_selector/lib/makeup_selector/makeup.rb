# require_relative 'api'
# require_relative 'cli'
# require 'pry'
# require 'httparty'

module MakeupSelector
 class Makeup
  attr_reader :product_category, :brand, :name, :price, :rating, :description, :chosen_category, :categories
  
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
  
  def self.find_by_category(chosen_category)
    self.all.find{|product| product.product_category == chosen_category}
  end
  
 def self.all
   @@all
 end
 

  
  
 end
end

# Makeup.new
