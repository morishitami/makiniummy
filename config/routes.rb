Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
  resources :users, only: [:index, :show] do
    resources :questions, only: [:new, :create, :edit, :update]
    resources :actors, only: [:show, :new, :create, :edit, :update]
  end
end
