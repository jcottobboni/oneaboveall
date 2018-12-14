Rails.application.routes.draw do
  resources :transactions
  resources :categories
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
