require 'pry'

class ApplicationController < Sinatra::Base

    set :views, 'app/views'

    get "/" do
        erb :welcome
    end

    get "/restrictions" do
        erb :restrictions
    end

    get "/foods" do
        @foods = Food.all
        erb :index
    end

    get "/new" do
        erb :new
    end

    post "/foods" do
        binding.pry
        # design the new food form to capture all necessary attribute data so we can create Food:
        # Food.create(params)
    end

end

# food
# macro
# micro

# food_nutrition.com/foods/broccoli/macros
# food_nutrition.com/macros
