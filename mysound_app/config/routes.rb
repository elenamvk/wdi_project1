Rails.application.routes.draw do
  resources :songs
  resources :activities
  devise_for :users 
  resources :users 
  resources :comments, only: [:create, :destroy]

  root "activities#index"
end