class Brand
  

def self.brand_search
  puts "Please type the name of the brand you'd like to search for (all lowercase letters):"
  brand_input = gets.strip
  url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=#{brand_input}"
  response = HTTParty.get(url)
end

  
  
end