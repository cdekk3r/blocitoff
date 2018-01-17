Rails.application.routes.draw do
  
  get 'users/show'

  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'
  
  
  devise_for :users
  
end
