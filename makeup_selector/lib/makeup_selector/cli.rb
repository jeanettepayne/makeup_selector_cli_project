require_relative './api'
require_relative './makeup'
require 'pry'

module MakeupSelector
 class CLI 
  attr_accessor :chosen_category
  attr_reader :categories, :product_category, :brand, :name, :price, :rating, :description, :category_list, :product_list
  
  def start
    puts "Welcome to the Makeup Selector App!
    "
    MakeupSelector::API.products
    self.get_categories
    self.category_list
    self.get_user_category
    self.get_description
  end
  
   def get_categories
    @categories = []
    MakeupSelector::Makeup.all.each do |product|
      @categories << product.product_category
   end
  end

  def category_list
    puts "Please enter a number to select a product type:"
  
    @category_list = @categories.uniq!.each.with_index(1) do |category, index|
      puts "#{index}. #{category}"
    end
  end

  def get_user_category
    input = gets.strip.to_i 
  
    product_type = @category_list[input-1]
    puts "Here is a list of #{product_type} products:"
    
    @product_list = []
    counter = 1
    MakeupSelector::Makeup.all.each do |product, index|
      if product_type == product.product_category
        puts "#{counter}.    Name: #{product.name}, 
        Brand: #{product.brand}, 
        Price: $#{product.price}"
        counter += 1
        @product_list.push
      end
     end
    end
    
    def get_description
      puts "To get the description for any product above, please enter its list number:"
      input = gets.strip.to_i
      
      product_chosen = @product_list[input-1]
      binding.pry
        puts "#{product.description}"
    end

  
end
end

# MakeupSelector::CLI.new.get_categories
