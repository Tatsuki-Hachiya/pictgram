Rails.application.routes.draw do
  # get 'users/new'
  root 'pages#index'
  # get 'pages/index'
  get 'pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :users
end

# Rails.application.routes.draw do
#   root 'pages#index'
#   get 'pages/help'

#   resources :users
# end

