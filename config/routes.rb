Rails.application.routes.draw do

  resources :users, only: [:index, :show]
  resources :invitations
  resources :events
  # get 'users/email/:email', to: 'users#email_search'
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
  post 'restaurant', to: 'restaurant#get_restaurant'
end
