Rails.application.routes.draw do

  resources :users, only: [:index, :show]
  resources :invitations
  resources :events
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'

end
