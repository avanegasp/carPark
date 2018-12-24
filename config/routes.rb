Rails.application.routes.draw do

  root "vehicles#index"

  resources :parking
  resources :vehicles

end
