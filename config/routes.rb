Rails.application.routes.draw do
  get 'home/index'
  get 'auth/register' => 'auth#register' , as: :register
  post 'auth/signup' => 'auth#signup' , as: :signup
  get 'auth/login' => 'auth#login' , as: :login
  post 'auth/signin' => 'auth#signin' , as: :signin
  get 'auth/logout' => 'auth#logout' , as: :logout
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index" 
end
