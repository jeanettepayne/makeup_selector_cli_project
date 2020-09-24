require 'pry'
require 'colorize'

module MakeupSelector
 class CLI 
  attr_reader :categories, :product_category, :brand, :name, :price, :rating, :description, :category_list, :product_list, :input
  
  def start
    puts "Welcome to the Makeup Selector App!
    ".magenta
    MakeupSelector::API.products
    @input = ""
    until @input == "exit"
      get_categories
      category_list
      get_user_category
      get_description
      restart_or_exit

    end 
    goodbye
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
      puts "#{index}. #{category.split("_").join(" ").capitalize}"
    end
  end

  def get_user_category
    input = gets.strip.to_i 
    if input > 10
      begin
        raise MakeupError
      rescue MakeupError => error
        puts error.category_message
      end
      get_user_category
    else
      product_type = @category_list[input-1]
      puts "Here is a list of #{product_type.split("_").join(" ")} products:".magenta
    
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
    end
    
    def get_description
      puts "To get the description for any product above, please enter its list number:".magenta
      input = gets.strip.to_i
      if input > @product_list.length
        begin
          raise MakeupError
        rescue MakeupError => error
          puts error.description_message
        end
        get_description
      else
      product = @product_list[input-1]
        puts "
        #{product.description}"
      end
    end
    
    def restart_or_exit
      puts "Would you like to search for another product? Enter 'exit' to leave program, or hit any key to search again".magenta
      @input = gets.strip
    end
   
   def goodbye
     puts "Thank you for using the Makeup Selector app! Goodbye!".magenta
   end

  class MakeupError < StandardError

    def category_message
      puts "Please enter a number between 1 and 10:".magenta
    end

    def description_message
      puts "Oops! I don't recognize that entry. Please try again.".magenta
    end

   end

  
   end
end
