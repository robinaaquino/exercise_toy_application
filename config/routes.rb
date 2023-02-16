Rails.application.routes.draw do
  get '/home', to: 'static_pages#home'
  get '/users', to: 'users#index'
  get '/records', to: 'records#index'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :records
  resources :users

  root "static_pages#home"
end
