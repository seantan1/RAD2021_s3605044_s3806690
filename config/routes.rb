Rails.application.routes.draw do
  get '/search' => 'search#autocomplete', as: :search_autocomplete
  
  get 'cart_products/checkout', to: 'cart_products#checkout'
  resources :cart_products
  get 'support' => 'supports#new'
  resources :supports
  resources :savedlist
  
  resources :newsletter_emails
  get '/products/category/:id', to: 'products#category'
  get 'products/search', to: 'products#search'
  # get '/products/filter', to: 'products#filter'
  get 'filter' => 'products#filter'
  resources :products
  # get 'products/men'
  # get 'products/women'
  # get 'products/kids'
  get 'users/newsletter_subscription_switch', to: 'users#newsletter_subscription_switch'
  get 'users/list'
  get 'profile' => 'users#show'
  resources :users
  
  # get 'savedlist' => 'savedlist#savedlist'
  
  # get 'profile' => 'profile#index'
  # get 'cart_login', to: 'sessions#cart_login'
  get 'seeAllProducts' => 'products#seeAllProducts'
  get '/auth/:provider/callback', to: 'sessions#twitter'
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


