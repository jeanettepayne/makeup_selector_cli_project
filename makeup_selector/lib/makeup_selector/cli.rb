class MakeupSelector::CLI 
  
def initialize
  puts "Welcome to the Makeup Selector App!
  "
  self.product_list
end

def product_list
  product_list = [blush, bronzer, eyebrow, eyeliner, eyeshadow, foundation, lip liner, lipstick, mascara]
  
  puts "Please enter a number to select a product type:"
  
  product_list.each.with_index(1) do |product, index|
    puts "#{index}. #{product}"
  end
  # 1. Blush
  # 2. Bronzer
  # 3. Eyebrow
  # 4. Eyeliner
  # 5. Eyeshadow
  # 6. Foundation
  # 7. Lip Liner 
  # 8. Lipstick
  # 9. Mascara
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
