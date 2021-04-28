Rails.application.routes.draw do
  get 'users/list'
  resources :users
  
  get 'login' => 'sessions#index'
  get 'register' => 'users#register'
  resources :sessions
  
  # get 'home/index'
  
  # get 'home/about'
  # Default Page
  root 'home#index' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
