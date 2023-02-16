Rails.application.routes.draw do
  get '/home', to: 'static_pages#home'
  get '/users', to: 'users#index'
  get '/records', to: 'records#index'

  resources :records
  resources :users

  root "static_pages#home"
end
