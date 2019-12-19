require 'pry'

class ApplicationController < Sinatra::Base

    configure do
        set :views, 'app/views'
        enable :sessions
    end

    get "/" do
        erb :welcome
    end

    get "/restrictions" do
        erb :restrictions
    end

end

# food
# macro
# micro

# food_nutrition.com/foods/broccoli/macros
# food_nutrition.com/macros
