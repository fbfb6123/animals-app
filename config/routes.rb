Rails.application.routes.draw do
  devise_for :users
  root "rewards#index"
   #root "messages#index"
  resources :users, only: [:edit, :update]
  resources :rewards, only: [:index, :show, :new, :create, :edit, :update]  do
    resources :messages, only: [:index, :show, :new, :create, :edit, :update] 
    
  end
end
