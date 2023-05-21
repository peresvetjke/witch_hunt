Rails.application.routes.draw do
  resources :entities
  resources :types
  get '/markup/new', to: 'markup#new'
  post '/markup', to: 'markup#markup'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
