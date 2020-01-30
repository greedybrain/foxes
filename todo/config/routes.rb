Rails.application.routes.draw do

  get '/lists', to: 'lists#index'
  get '/lists/:id', to: 'lists#show'
  get '/lists/new', to: 'lists#new'
  post '/lists', to: 'lists#create'

  # resources :lists, only: [:new, :show, :create, :index] => This line will generate the same code as lines 3 - 6
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# Activerecord => new method that instantiates a new object without saving it
# create method that instantiates a new object and saves it as a record in the database

# Restful Routing / CRUD => new action is linked to get request (rendering a form)
# create is linked to post request (submitting data through the form)