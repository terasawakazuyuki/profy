Rails.application.routes.draw do
  devise_for :users
  root to: "top#index"
  resources :users,     only: [:show, :edit, :update]
  resources :groups,    only: [:show, :edit,:update]
  resources :questions ,only: [:create, :show]
  resources :answers,   only: [:create, :new, :edit, :update]
end


