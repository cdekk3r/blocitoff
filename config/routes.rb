Rails.application.routes.draw do
  
  resources :users, only: [:show] do
    resources :items, only: [:create]
  end

  get 'welcome/index'

  get 'welcome/about'

  root 'users#show'
  
  
  devise_for :users
  
end
