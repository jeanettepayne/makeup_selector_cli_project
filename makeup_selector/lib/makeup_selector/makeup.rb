require_relative './cli'

class Makeup
  attr_accessor :brand, :name, :price, :rating, :description
  
  def self.blush_category_info
    # puts "Enter a number to select your search parameters:"
    CLI.search_choices
    CLI.get_user_search_choice

  end
  
  
end