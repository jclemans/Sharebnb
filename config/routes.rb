Sharebnb::Application.routes.draw do
  root to: 'rentals#index'
  devise_for :users
  resources :users, only: [:show, :index]
  resources :rentals
  resources :reservations
end
