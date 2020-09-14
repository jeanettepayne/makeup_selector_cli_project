require_relative './makeup.rb'
require 'rubygems'
require 'httparty'
require 'pry'
# response = HTTParty.get('http://makeup-api.herokuapp.com/api/v1/products.json')

Module MakeupSelector
 class API

def self.products
  response = HTTParty.get('http://makeup-api.herokuapp.com/api/v1/products.json')
  response.each do |product|
    product_category = product["product_type"]
    brand = product["brand"]
    name = product["name"]
    price = product["price"]
    rating = product["rating"]
    description = product["description"]
    
    nm = MakeupSelector::Makeup.new(product_category, brand, name, price, rating, description)
  # binding.pry
  end
end
 
  
end

# API.product_scrape
