Rails.application.routes.draw do

  root "parkings#index"

  resources :parking
  resources :vehicles

end
