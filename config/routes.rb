# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  resources :topics, only: [:index, :show]
  post 'auth/login', to: 'authentication#authenticate'
  post '/signup', to: 'users#create'
end
