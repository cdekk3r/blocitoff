Rails.application.routes.draw do
  
  resources :users, only: [:show] do
    resources :item, only: [:create]
  end

  get 'welcome/index'

  get 'welcome/about'

  root 'users#show'
  
  
  devise_for :users
  
end
