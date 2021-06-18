Rails.application.routes.draw do
  devise_for :users
  root to: 'cars#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cars do
    resources :bookings, only: [:show, :new, :create, :edit, :update]
  end
  resources :bookings, only: [:destroy]
end
