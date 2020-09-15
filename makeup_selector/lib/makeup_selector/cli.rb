require_relative './api'
require_relative './makeup'
require 'pry'

module MakeupSelector
 class CLI 
  attr_accessor :chosen_category
  attr_reader :categories, :product_category, :brand, :name, :price, :rating, :description, :category_list
  
  def start
    puts "Welcome to the Makeup Selector App!
    "
    MakeupSelector::API.products
    self.get_categories
    self.category_list
    self.get_user_category
    # self.product_list
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
    puts "Here is a list of products:"
    
    MakeupSelector::Makeup.all.each do |product|
      if product_type == product.product_category
        puts "#{product.name}"
      end
    end
    # binding.pry
    
  end

  
end
end

# MakeupSelector::CLI.new.get_categories
