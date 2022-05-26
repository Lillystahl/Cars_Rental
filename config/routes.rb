Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  get "dashboard/cars", to: "pages#dashboardmycars"
  get "dashboard/bookings", to: "pages#dashboardmybookings"
  resources :cars, only: [:index, :new, :create, :show] do
    resources :bookings, only: :create
  end
end
