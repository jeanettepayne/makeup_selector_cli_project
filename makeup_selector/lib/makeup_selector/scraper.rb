require 'rubygems'
require 'httparty'
require 'pry'
response = HTTParty.get('http://makeup-api.herokuapp.com/api/v1/products.json')


class Scraper
  # include HTTParty
  
# response = HTTParty.get('http://makeup-api.herokuapp.com/api/v1/products.json')

 def blush
  url = 'http://makeup-api.herokuapp.com/api/v1/products.json?product_type=blush'
  response = HTTParty.get(url)
  # data = response.parsed_response
    response.each do |product|
      puts product["brand"]
      puts product["name"]
      puts product["price"]
      puts product["rating"]
      puts product["description"]
    end
 end

def bronzer
  url = 'http://makeup-api.herokuapp.com/api/v1/products.json?product_type=bronzer'
  response = HTTParty.get(url)
  # data = response.parsed_response
    response.each do |product|
      puts product["brand"]
      puts product["name"]
      puts product["price"]
      puts product["rating"]
      puts product["description"]
    end
 end


  
end


Scraper.new.bronzer