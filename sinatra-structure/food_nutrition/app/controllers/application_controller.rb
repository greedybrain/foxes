class ApplicationController < Sinatra::Base

    set :views, 'app/views'

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
