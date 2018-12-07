Rails.application.routes.draw do

devise_for :users

root to: 'pages#home'
  resources :restaurants, only: [:index, :show] do
    resources :reviews, only: [:new, :create, :show]
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index]
end
