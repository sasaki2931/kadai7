Rails.application.routes.draw do
  resources :profile
  root 'shares#index'

  resources :favorites, only: [:create, :destroy,:new]
  
  resources :shares do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new,:create,:show,:edit, :update]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :contacts, only: [:new, :create]
  


end
