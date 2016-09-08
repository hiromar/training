Rails.application.routes.draw do
  root 'tweets#index'
  devise_for :users
  resources :tweets, only: [:index, :new, :create]
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
end
