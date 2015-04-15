Rails.application.routes.draw do
  resources :songs
  devise_for :users #devise_for :users, :controllers => { :registrations => "registrations" }
  resources :users # only: [:index, :show]
  resources :comments, only: [:create, :destroy]
  #devise_scope :user do
   # match "/", to: "devise/registrations#new", via: 'get'
  #end

  
  

  root "home#index"
end