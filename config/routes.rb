Rails.application.routes.draw do
  devise_for :users
  root to: "properties#index"

  resources :properties do
    resources :reservations, except: :destroy
  end
  resources :reservations, only: :destroy
end
