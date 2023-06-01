Rails.application.routes.draw do
  devise_for :users
  root to: "properties#index"

  resources :users, only: %i[show]

  resources :properties do
    collection do
      get :set_properties
    end

    resources :reservations, except: [:destroy, :show]
  end

  resources :reservations, only: [:destroy, :show] do
    collection do
      get :set_reservations
    end
  end
end
