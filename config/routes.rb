Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
  resources :users, only: [:index, :show]
  resources :questions, only: [:new, :create, :edit, :update]
end
