require_relative './cli'
require_relative './scraper'
require 'pry'

class Makeup
  attr_accessor :brand, :name, :price, :rating, :description, :product_category
  
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
  
  def self.blush_category_info
    # puts "Enter a number to select your search parameters:"
    # CLI.search_choices
    # CLI.get_user_search_choice
   
  end
  
 def self.all
   @@all
 end
  
  
end

# Makeup.all
