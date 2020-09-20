# require 'pry'
# require 'httparty'
# require 'colorize'

require_relative './makeup_selector/version'
require_relative './makeup_selector/cli'
require_relative './makeup_selector/api'
require_relative './makeup_selector/makeup'

module MakeupSelector
  class Error < StandardError; end
  # Your code goes here...
end