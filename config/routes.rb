Rails.application.routes.draw do
  devise_for :users
  root to: "properties#index"

  resources :properties do
    collection do
      get :set_properties
    end

    resources :reservations, except: :destroy
  end

  resources :reservations, only: :destroy do
    collection do
      get :set_reservations
    end
  end
end
