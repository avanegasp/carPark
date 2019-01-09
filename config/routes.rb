Rails.application.routes.draw do

  root "parkings#index"

  resources :parkings
  resources :vehicles

  namespace :api do
    namespace :v1 do
      resources :parkings, only: [:index, :create, :update, :destroy]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :vehicles, only: [:index, :create, :update, :destroy]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :parkings do
        resources :vehicles
      end
    end
  end


end
