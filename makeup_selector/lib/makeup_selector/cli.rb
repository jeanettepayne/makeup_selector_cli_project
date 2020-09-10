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
    puts Scraper.blush 
  end
end

# def get_products
#   @products = MakeupSelector::Scraper.products
# end
  
end

CLI.new
