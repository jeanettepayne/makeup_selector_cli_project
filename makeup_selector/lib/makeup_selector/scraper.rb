require 'rubygems'
require 'httparty'
require 'pry'
response = HTTParty.get('http://makeup-api.herokuapp.com/api/v1/products.json')


class Scraper
  # include HTTParty
  
# response = HTTParty.get('http://makeup-api.herokuapp.com/api/v1/products.json')

# def products
#   response = HTTParty.get('http://makeup-api.herokuapp.com/api/v1/products.json')
#   response.each do |product|
#     product["product_type"]
#   end
#   binding.pry
# end

 def blush
  url = 'http://makeup-api.herokuapp.com/api/v1/products.json?product_type=blush'
  response = HTTParty.get(url)
    response.collect do |product|
      {
      :brand => product["brand"],
      :name => product["name"],
      :price => product["price"],
      :rating => product["rating"],
      :description => product["description"],
      }
    end
 end

def bronzer
  url = 'http://makeup-api.herokuapp.com/api/v1/products.json?product_type=bronzer'
  response = HTTParty.get(url)
    response.each do |product|
      product["brand"]
      product["name"]
      product["price"]
      product["rating"]
      product["description"]
      # binding.pry
    end
 end

def eyebrow
  url = 'http://makeup-api.herokuapp.com/api/v1/products.json?product_type=eyebrow'
  response = HTTParty.get(url)
    response.each do |product|
      product["brand"]
      product["name"]
      product["price"]
      product["rating"]
      product["description"]
    end
 end
 
 def eyeliner
  url = 'http://makeup-api.herokuapp.com/api/v1/products.json?product_type=eyeliner'
  response = HTTParty.get(url)
    response.each do |product|
      product["brand"]
      product["name"]
      product["price"]
      product["rating"]
      product["description"]
    end
 end
 
 def eyeshadow
  url = 'http://makeup-api.herokuapp.com/api/v1/products.json?product_type=eyeshadow'
  response = HTTParty.get(url)
    response.each do |product|
      product["brand"]
      product["name"]
      product["price"]
      product["rating"]
      product["description"]
    end
 end
 
 def foundation
  url = 'http://makeup-api.herokuapp.com/api/v1/products.json?product_type=foundation'
  response = HTTParty.get(url)
    response.each do |product|
      product["brand"]
      product["name"]
      product["price"]
      product["rating"]
      product["description"]
    end
 end
 
 def lip_liner
  url = 'http://makeup-api.herokuapp.com/api/v1/products.json?product_type=lip_liner'
  response = HTTParty.get(url)
    response.each do |product|
      product["brand"]
      product["name"]
      product["price"]
      product["rating"]
      product["description"]
    end
 end
 
 def lipstick
  url = 'http://makeup-api.herokuapp.com/api/v1/products.json?product_type=lipstick'
  response = HTTParty.get(url)
    response.each do |product|
      product["brand"]
      product["name"]
      product["price"]
      product["rating"]
      product["description"]
    end
 end
 
 def mascara
  url = 'http://makeup-api.herokuapp.com/api/v1/products.json?product_type=mascara'
  response = HTTParty.get(url)
    response.each do |product|
      product["brand"]
      product["name"]
      product["price"]
      product["rating"]
      product["description"]
    end
 end
 
  
end


# Scraper.new.products