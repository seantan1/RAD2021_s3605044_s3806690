Rails.application.routes.draw do
  resources :cart

  resources :newsletter_emails
  resources :products
  get 'users/list'
  resources :users
  
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


