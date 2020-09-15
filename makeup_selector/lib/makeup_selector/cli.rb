require_relative './api'
require_relative './makeup'
require 'pry'
require 'colorize'

module MakeupSelector
 class CLI 
  attr_accessor :chosen_category
  attr_reader :categories, :product_category, :brand, :name, :price, :rating, :description, :category_list, :product_list, :input
  
  def start
    puts "Welcome to the Makeup Selector App!
    ".magenta
    MakeupSelector::API.products
    @input = ""
    until @input == "exit"
      self.get_categories
      self.category_list
      self.get_user_category
      self.get_description
      self.restart_or_exit
    end 
    self.goodbye
  end
  
   def get_categories
    @categories = []
    MakeupSelector::Makeup.all.each do |product|
      @categories << product.product_category
   end
  end

  def category_list
    puts "Please enter a number to select a product type:".magenta
  
    @category_list = @categories.uniq!.each.with_index(1) do |category, index|
      puts "#{index}. #{category}"
    end
  end

  def get_user_category
    input = gets.strip.to_i 
  
    product_type = @category_list[input-1]
    puts "Here is a list of #{product_type} products:".magenta
    
    @product_list = []
    counter = 1
    MakeupSelector::Makeup.all.each do |product|
      if product_type == product.product_category
        @product_list << product
        puts "#{counter}.    Name: #{product.name}, 
        Brand: #{product.brand}, 
        Price: $#{product.price}"
        counter += 1
      end
     end
    end
    
    def get_description
      puts "To get the description for any product above, please enter its list number:".magenta
      input = gets.strip.to_i
      
      product = @product_list[input-1]
        puts "
        #{product.description}"
    end
    
    def restart_or_exit
      puts "Would you like to search for another product? Enter 'exit' to leave program, or hit any key to search again".magenta
      @input = gets.strip
    end
   
   def goodbye
     puts "Thank you for using the Makeup Selector app! Goodbye!".magenta
   end
  
 end
end
