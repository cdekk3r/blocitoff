Rails.application.routes.draw do
  
  resources :user, only: [:show] do
    resources :item, only: [:create]
  end

  get 'welcome/index'

  get 'welcome/about'

  root 'users#show'
  
  
  devise_for :users
  
end
