Rails.application.routes.draw do
  resources :sellerspages, only: [:index, :show, :edit]
  
  devise_for :users
  
  root 'home#index'
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
