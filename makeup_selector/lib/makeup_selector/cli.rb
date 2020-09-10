require_relative './scraper'
require_relative './makeup'

class CLI 
  
  
def initialize
  puts "Welcome to the Makeup Selector App!
  "
  self.product_list
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
  if chosen_product == 1 
    Makeup.blush_category_info
    # ADD OTHER OPTIONS HERE
  end
end

def self.search_choices
  search_options = ["Brand", "Price", "Rating"]
  puts "Enter a number to select your search parameters:"
   search_options.each.with_index(1) do |option, index|
    puts "#{index}. #{option}"
  end
    
end

def self.get_user_search_choice
  # search_options = ["Brand", "Price", "Rating"]
  # search_options.each.with_index(1) do |option, index|
  #   puts "#{index}. #{option}"
  # end
  search_choice = gets.strip.to_i 
end

# def get_products
#   @products = MakeupSelector::Scraper.products
# end
  
end


