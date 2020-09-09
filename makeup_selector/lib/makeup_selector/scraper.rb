require 'rubygems'
require 'httparty'
response = HTTParty.get('http://makeup-api.herokuapp.com/api/v1/products.json')


class Scraper
  # include HTTParty
  
response = HTTParty.get('http://makeup-api.herokuapp.com/api/v1/products.json')

def blush
  url = 'http://makeup-api.herokuapp.com/api/v1/products.json?type=blush'
  response = HTTParty.get(url)
  puts response
end

  
end

Scraper.new.blush