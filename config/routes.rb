Rails.application.routes.draw do

  resources :cart_products
  get 'support' => 'supports#new'
  resources :supports
  resources :savedlist

  resources :newsletter_emails
  get '/products/category/:id', to: 'products#category'
  resources :products
  # get 'products/men'
  # get 'products/women'
  # get 'products/kids'
  get 'users/list'
  get 'profile' => 'users#show'
  resources :users
  
  # get 'savedlist' => 'savedlist#savedlist'
  
  # get 'profile' => 'profile#index'
  
  get 'seeAllProducts' => 'products#seeAllProducts'
  
  get 'login_main' => 'sessions#login'
  get 'login' => 'sessions#index'
  get 'logout' => 'sessions#destroy'
  get 'register' => 'users#register'
  resources :sessions
  
  # get 'home/index'
  
  # get 'home/about'
  # Default Page
  root 'home#index' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


