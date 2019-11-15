Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  get :profile, to: 'pages#profile'

  resources :workspaces do
    resources :bookings, only: [:new, :create, :destroy]
  end

  resources :bookings, only: [:show, :index]

end
