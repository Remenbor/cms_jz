Rails.application.routes.draw do
  resources :permissions
  resources :records
  resources :devices
  post '/devices/:id', to: 'devices#loan'
  resources :departments
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'

  root 'sessions#new'
  resources :users

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show, :update, :destroy]
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
