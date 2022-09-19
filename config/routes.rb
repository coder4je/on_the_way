Rails.application.routes.draw do
  resources :materials
  resources :schedules
  resources :receivers
  resources :drivers
  resources :orders
  resources :venders
  resources :deliveries
  resources :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
