Rails.application.routes.draw do

  resources :invitations
  resources :events
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'

end
