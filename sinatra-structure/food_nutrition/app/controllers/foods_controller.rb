class FoodsController < ApplicationController

        # Index
    get "/foods" do
        @foods = Food.all
        erb :'foods/index'
    end

        # New
    get "/foods/new" do
        erb :'foods/new'
    end

        # Create
    post "/foods" do
        binding.pry
        food = Food.create(params)
        redirect '/foods'
        # food.save unless food.name.empty?
    end


        # Update
    patch "/foods/:id" do

    end

end