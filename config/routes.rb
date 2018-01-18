Rails.application.routes.draw do
  
  get 'users/show'

  get 'welcome/index'

  get 'welcome/about'

  root 'users#show'
  
  
  devise_for :users
  
end
