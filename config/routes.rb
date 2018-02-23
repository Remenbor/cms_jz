Rails.application.routes.draw do
  resources :permissions
  resources :records
  resources :devices
  resources :departments
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'user#index'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
