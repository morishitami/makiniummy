Rails.application.routes.draw do
  devise_for :users
  root to: "actors#index"
  resources :users, only: :show
  resources :questions, only: [:show, :new, :create]
end
