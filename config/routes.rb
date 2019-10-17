Rails.application.routes.draw do
  resources :rooms, only: [:index]
  resources :bookings, only: [:index,:show,:create,:update]
end
