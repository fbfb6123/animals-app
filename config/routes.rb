Rails.application.routes.draw do
  devise_for :users
  root "messages#index"
  resources :users, only: [:edit, :update]
  resources :rewards, only: [:new, :create] 
  resources :messages, only: [:index, :new, :create] 
  
end
