Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'cars', to: 'cars#index'
  get 'cars/:id', to: 'cars#show'
end
