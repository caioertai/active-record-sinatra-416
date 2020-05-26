require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require "pry-byebug"

# This app.rb will work as the
# Router and Controller of this Sinatra app

# Home (root path)
get "/" do
  "Hello, CDMX!"
end

# Restaurants Index
get "/restaurants" do
  # Controller code
  @restaurants = Restaurant.all
  # Ask view to display them
  erb :"restaurants/index"
end

# Restaurants Show
get "/restaurants/:id" do
  # It will work like this:
  # /restaurants/42
  # Which will result in params like this:
  # params => { id: 42 }

  # ASK model for restaurant with ID from params
  @restaurant = Restaurant.find(params[:id])
  # ASK view to display
  erb :"restaurants/show"
end

# Restaurants Create
post '/restaurants' do
  # Because user fills this in the HTML:
  # <input type="text" name="name">
  # <input type="text" name="address">
  # <input type="number" name="rating">
  # We get params like this:
  # params => { name: "Carretão", address: "???", rating: 4 }

  # ASK model to instantiate
  @restaurant = Restaurant.new(params)
  # SAVE
  @restaurant.save

  redirect "/restaurants"
end
