class Brand
  attr_accessor :brand, :name, :price, :rating, :description

def self.brand_search
  puts "Please type the name of the brand you'd like to search for (all lowercase letters):"
  brand_input = gets.strip
  url = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=#{brand_input}"
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
 puts "#{@name}"
end

# def product_info
#   puts "#{@name}
#   #{@price}
#   #{@rating}"
# end
  
end