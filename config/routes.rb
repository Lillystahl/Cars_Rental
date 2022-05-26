Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  # get 'cars', to: 'cars#index'
  # get "cars/new", to: "cars#new"
  # post "cars", to: "cars#create"
  # get 'cars/:id', to: 'cars#show'
  # post 'cars/:car_id/bookings/:id', to: "bookings#create"
  resources :cars, only: [:index, :new, :create, :show] do
    resources :bookings, only: :create
  end
end
