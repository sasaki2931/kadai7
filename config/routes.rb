Rails.application.routes.draw do
  resources :shares
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new,:create,:show]
end
