Rails.application.routes.draw do

devise_for :users
root to: 'restaurants#index'
  resources :restaurants, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
    resources :bookings, only: [:new, :create, :show]
  end
end
