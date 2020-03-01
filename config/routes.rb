Rails.application.routes.draw do
  devise_for :users
  root "rewards#index"
  # root "messages#index"
  resources :users, only: [:edit, :update]
  resources :rewards, only: [:index, :new, :create]  
  resources :messages, only: [:index, :new, :create] 
  
end
