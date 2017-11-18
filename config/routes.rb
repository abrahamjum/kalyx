Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/destroy'

  root 'weed#home'
  get '/products' => 'weed#index'
  get 'products/:id' => 'weed#show'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/products/:id' => 'weed#show'
  get '/listing/add' => 'listings#new'
  post '/listing/add' => 'listings#create'
  get '/listings' => 'listings#index'
  post '/listings' => 'listings#create'
  get '/listing/:id' => 'listings#show'
  resources :users
  resources :listings
end
