Rails.application.routes.draw do
  get '/home', to: 'static_pages#home'
  resources :records
  resources :users

  root "static_pages#home"
end
