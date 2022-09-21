Rails.application.routes.draw do
  resources :materials
  resources :schedules
  resources :receivers
  resources :drivers
  resources :orders
  resources :venders
  resources :deliveries
  resources :admins
  # resources :sessions, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get'/admin/me', to: 'admins#show'
  post '/signup', to: 'admins#create'
  post '/admin/login', to: 'session#create'
  post '/driver/login', to: 'session#create'
  post '/receiver/login', to: 'session#create'
  post '/vender/login', to: 'session#create'

end
