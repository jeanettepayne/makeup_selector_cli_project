require_relative './scraper'
require_relative './makeup'
require_relative './brand'
require_relative './price'
require_relative './rating'

class CLI 
  
  
def initialize
  puts "Welcome to the Makeup Selector App!
  "
  self.product_list
  self.get_user_product
  self.search_choices
  self.get_user_search_choice
end

def product_list
  product_array = ["Blush", "Bronzer", "Eyebrow", "Eyeliner", "Eyeshadow", "Foundation", "Lip Liner", "Lipstick", "Mascara"]
  
  puts "Please enter a number to select a product type:"
  
  product_array.each.with_index(1) do |product, index|
    puts "#{index}. #{product}"
  end
end

def get_user_product
  chosen_product = gets.strip.to_i 
end

def search_choices
  search_options = ["Brand", "Price", "Rating"]
  puts "Enter a number to select your search parameters:"
   search_options.each.with_index(1) do |option, index|
    puts "#{index}. #{option}"
  end
    
end

def get_user_search_choice
  search_choice = gets.strip.to_i 
end

# def get_products
#   @products = MakeupSelector::Scraper.products
# end
  
end


