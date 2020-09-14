require_relative './api'
require_relative './makeup'

module MakeupSelector
 class CLI 
  
  
  def initialize
    puts "Welcome to the Makeup Selector App!
    "
    self.category_list
    self.get_user_category
    self.search_choices
    self.get_user_search_choice
  end

  def category_list
    category_array = ["Blush", "Bronzer", "Eyebrow", "Eyeliner", "Eyeshadow", "Foundation", "Lip Liner", "Lipstick", "Mascara"]
  
    puts "Please enter a number to select a product type:"
  
    category_array.each.with_index(1) do |category, index|
      puts "#{index}. #{category}"
    end
  end

  def get_user_category
    chosen_category = gets.strip.to_i 
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
end


