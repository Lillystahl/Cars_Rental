Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  get 'cars', to: 'cars#index'
  get "cars/new", to: "cars#new"
  post "cars", to: "cars#create"
  get 'cars/:id', to: 'cars#show'
  get "dashboard/cars", to: "pages#dashboardmycars"
  get "dashboard/bookings", to: "pages#dashboardmybookings"
end
