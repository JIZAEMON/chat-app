Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy]
  resources :rooms do
    resources :messages, only: [:index, :create]
  end
end
