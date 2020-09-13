require 'pry'
require 'httparty'

class Brand
  attr_accessor :brand, :name, :price, :rating, :description, :namebrand

def self.brand_search
  puts "Please type the name of the brand you'd like to search for (all lowercase letters):"
  brand_input = gets.strip
  url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=#{brand_input}"
  response = HTTParty.get(url)
   response.each do |product|
      {
      :brand => product["brand"],
      :name => product["name"],
      :price => product["price"],
      :rating => product["rating"],
      :description => product["description"],
      }
      binding.pry
      puts "#{@name}"
    end 
end

# def self.product_info
#   puts "#{@name}
#   #{@price}
#   #{@rating}"
# end
  
end

# Brand.brand_search