Rails.application.routes.draw do
  resources :shares
  resources :shares do
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new,:create,:show]

end
