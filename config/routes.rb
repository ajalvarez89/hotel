Rails.application.routes.draw do
  resources :rooms, only: [:index]
  resources :bookings, only: [:create, :update]
end
